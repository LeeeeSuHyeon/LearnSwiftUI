//
//  20-Stack.swift
//  DemoProject
//
//  Created by 이수현 on 2023/12/22.
//

import SwiftUI

//struct Stack_20: View {
//    var body: some View {
//        VStack{
//            Image(systemName: "goforward.10")
//            Image(systemName: "goforward.15")
//            Image(systemName: "goforward.30")
//        }
//    }
//}



//struct Stack_20: View {
//    var body: some View {
//        VStack(alignment: .center, spacing: 15){
//            Text("Financial Results")
//                .font(.title)
//            
//            HStack(alignment : .top){
//                Text("Q1 Sales")
//                    .font(.headline)
//                Spacer()
//                VStack(alignment : .leading){
//                    Text("January")
//                    Text("February")
//                    Text("March")
//                }
//                Spacer()
//                VStack(alignment : .leading){
//                    Text("$1000")
//                    Text("$200")
//                    Text("$3000")
//                    
//                }
//                .padding(5)
//            }
//            .padding(5)
//        }
//        .padding(5)
//    }
//}


//struct Stack_20: View {
//    var body: some View {
//        VStack(alignment: .center, spacing: 100){
//            Text("Financial Results")
//                  .font(.title)
//            Text("Financial Results")
//                .padding()
//        }
//    }
//}



// 20.3 자식 뷰 제한
//struct Stack_20: View {
//    var body: some View {
//        VStack(alignment: .center, spacing: 10){
//            Group{
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//            }
//            Group{
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//            }
//        }
//    }
//}


// 20.4 텍스트 줄 제한, 레이아웃 우선순위
//struct Stack_20: View {
//    var body: some View {
//        HStack{
//            Image(systemName: "airplane")
//            Text("Flight times : ")
//            Text("London").layoutPriority(1)
//        }
//        .font(.system(size: 50))
//        .lineLimit(1)
//    }
//}


// 20.5 프레임
//struct Stack_20: View {
//    var body: some View {
//        Text("Hello World!!!")
//            .font(.largeTitle)
//            .border(.black)
////            .frame(minWidth: 100, maxWidth: 300, minHeight: 100, maxHeight: 100, alignment: .center)
//            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
//            // 안전 영역까지 frame을 확장하려면 edgesIgnoringSafeArea() 수정자 사용
//            .edgesIgnoringSafeArea(.all)
//    }
//}

// 20.6 frame, GeometryReader
struct Stack_20 : View {
    var body: some View {
        GeometryReader { geometry in
            VStack{
                Text("Hello World, how are you?")
                    .font(.largeTitle)
                    .frame(width: geometry.size.width / 2,
                           height: (geometry.size.height / 4) * 3)
                Text("Goodbye World")
                    .font(.largeTitle)
                    .frame(width: geometry.size.width / 3,
                           height: geometry.size.height / 4)
            }
        }
    }
}


#Preview {
    Stack_20()
}
