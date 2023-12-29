//
//  Chap24.swift
//  DemoProject
//
//  Created by 이수현 on 2023/12/29.
//

import SwiftUI

//struct Chap24: View {
//    var body: some View {
//        VStack{
//            Text("This is some text")
//            Text("This is some longer text")
//            Text("This is short")
//        }
//        .padding(50)
//        
//        VStack(alignment: .leading){
//            Text("This is some text")
//            Text("This is some longer text")
//            Text("This is short")
//        }
//        .padding(50)
//        
//        VStack(alignment: .trailing){
//            Text("This is some text")
//            Text("This is some longer text")
//            Text("This is short")
//        }
//        .padding(50)
//    }
//}


//struct Chap24: View {
//    var body: some View {
//        HStack(alignment: .firstTextBaseline, spacing: 30){
//            Text("This is some text")
//                .font(.largeTitle)
//            
//            Text("This is some much longer text")
//                .font(.body)
//            
//            Text("This is short")
//                .font(.headline)
//        }
//        .padding(.bottom, 50)
//        
//        HStack(alignment: .lastTextBaseline, spacing: 30){
//            Text("This is some text")
//                .font(.largeTitle)
//            
//            Text("This is some much longer text")
//                .font(.body)
//            
//            Text("This is short")
//                .font(.headline)
//        }
//    }
//}

//// 24.2
//struct Chap24: View {
//    var body: some View {
//        VStack(alignment: .leading){
//            Rectangle()
//                .foregroundColor(.green)
//                .frame(width:120, height: 50)
//            Rectangle()
//                .foregroundColor(.red)
//                .alignmentGuide(.leading, computeValue: { dimension in
//                    dimension[HorizontalAlignment.trailing] + 20
//                })
//                .frame(width:200, height: 50)
//            Rectangle()
//                .foregroundColor(.blue)
//                .frame(width:180, height: 50)
//        }
//    }
//}


//// 24.4
//struct Chap24: View {
//    var body: some View {
//        HStack(alignment: .oneThird){
//            Rectangle()
//                .foregroundColor(.green)
//                .frame(width: 50, height: 200)
//            Rectangle()
//                .foregroundColor(.red)
//                .alignmentGuide(.oneThird, computeValue: { dimension in
//                    dimension[VerticalAlignment.top]
//                })
//                .frame(width: 50, height: 200)
//            Rectangle()
//                .foregroundColor(.blue)
//                .frame(width: 50, height: 200)
//            Rectangle()
//                .foregroundColor(.orange)
//                .alignmentGuide(.oneThird, computeValue: { dimension in
//                    dimension[VerticalAlignment.bottom]
//                })
//                .frame(width: 50, height: 200)
//        }
//    }
//}
//
//extension VerticalAlignment{
//    private enum OneThird : AlignmentID {
//        static func defaultValue(in context: ViewDimensions) -> CGFloat {
//            return context.height / 3
//        }
//    }
//    
//    static let oneThird = VerticalAlignment(OneThird.self)
//}


//// 24.5
//struct Chap24: View {
//    var body: some View {
//        HStack(alignment: .crossAlignment, spacing: 20){
//            Circle()
//                .foregroundColor(.purple)
//                .alignmentGuide(.crossAlignment, computeValue: { dimension in
//                    dimension[VerticalAlignment.center]
//                })
//                .frame(width: 100, height: 100)
//            
//            VStack{
//                Rectangle()
//                    .foregroundColor(.green)
//                    .frame(width: 100, height: 100)
//                Rectangle()
//                    .foregroundColor(.red)
//                    .frame(width: 100, height: 100)
//                Rectangle()
//                    .foregroundColor(.blue)
//                    .alignmentGuide(.crossAlignment, computeValue: { dimension in
//                        dimension[VerticalAlignment.center]
//                    })
//                    .frame(width: 100, height: 100)
//                Rectangle()
//                    .foregroundColor(.orange)
//                    .frame(width: 100, height: 100)
//            }
//        }
//    }
//}
//
//// 뷰의 아래쪽을 기준으로 한 정렬 값을 반환하는 커스텀 정렬 구현
//extension VerticalAlignment {
//    private enum CrossAlignment : AlignmentID {
//        static func defaultValue(in context: ViewDimensions) -> CGFloat {
//            return context[.bottom]
//        }
//    }
//    static let crossAlignment = VerticalAlignment(CrossAlignment.self)
//}




// 24.6
struct Chap24: View {
    var body: some View {
        ZStack(alignment: .myAlignment){
            Rectangle()
                .foregroundColor(.green)
                .alignmentGuide(HorizontalAlignment.myAlignment, computeValue: { dimension in
                    dimension[.leading]
                })
                .alignmentGuide(VerticalAlignment.myAlignment, computeValue: { dimension in
                    dimension[VerticalAlignment.bottom]
                })
                .frame(width: 100, height: 100)
            
            Rectangle()
                .foregroundColor(.red)
                .alignmentGuide(VerticalAlignment.myAlignment, computeValue: { dimension in
                    dimension[VerticalAlignment.center]
                })
                .alignmentGuide(HorizontalAlignment.myAlignment, computeValue: { dimension in
                    dimension[HorizontalAlignment.trailing]
                })
                .frame(width: 100, height: 100)
            
            Circle()
                .foregroundColor(.orange)
                .alignmentGuide(HorizontalAlignment.myAlignment, computeValue: { dimension in
                    dimension[.leading]
                })
                .alignmentGuide(VerticalAlignment.myAlignment, computeValue: { dimension in
                    dimension[.top]
                })
                .frame(width: 100, height: 100)
        }
    }
}

extension HorizontalAlignment {
    enum MyHorizontal : AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            return context[HorizontalAlignment.center]
        }
    }
    static let myAlignment = HorizontalAlignment(MyHorizontal.self)
}

extension VerticalAlignment {
    enum MyVertical : AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            return context[VerticalAlignment.center]
        }
    }
    static let myAlignment = VerticalAlignment(MyVertical.self)
}


extension Alignment {
    static let myAlignment = Alignment(horizontal: .myAlignment, vertical: .myAlignment)
}




#Preview {
    Chap24()
}
