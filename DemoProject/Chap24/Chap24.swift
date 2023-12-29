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


// 24.4
struct Chap24: View {
    var body: some View {
        HStack(alignment: .oneThird){
            Rectangle()
                .foregroundColor(.green)
                .frame(width: 50, height: 200)
            Rectangle()
                .foregroundColor(.red)
                .alignmentGuide(.oneThird, computeValue: { dimension in
                    dimension[VerticalAlignment.top]
                })
                .frame(width: 50, height: 200)
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 50, height: 200)
            Rectangle()
                .foregroundColor(.orange)
                .alignmentGuide(.oneThird, computeValue: { dimension in
                    dimension[VerticalAlignment.bottom]
                })
                .frame(width: 50, height: 200)
        }
    }
}

extension VerticalAlignment{
    private enum OneThird : AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            return context.height / 3
        }
    }
    
    static let oneThird = VerticalAlignment(OneThird.self)
}

#Preview {
    Chap24()
}
