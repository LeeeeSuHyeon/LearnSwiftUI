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
struct Stack_20: View {
    var body: some View {
        VStack(alignment: .center, spacing: 100){
            Group{
                Text("Sample Text")
                Text("Sample Text")
                Text("Sample Text")
                Text("Sample Text")
                Text("Sample Text")
                Text("Sample Text")
            }
        }
    }
}



#Preview {
    Stack_20()
}
