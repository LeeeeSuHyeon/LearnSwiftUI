//
//  ContentView.swift
//  DemoProject
//
//  Created by 이수현 on 2023/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello, world!")
//        Text("Hello, world!")   // 유효하지 않은 구조
//        VStack {
//            VStack {
//                Text("Text1")
//                Text("Text2")
//                HStack{
//                    Text("Text3")
//                    Text("Text4")
//                }
//            }
//            Text("Text5")
//        }
        
//        Text("Hello, ") + Text("how ") + Text("are you?")
        
        
        var myString = "Welcome to SwiftUI"
        return VStack{
            Text("Hello, world!")
            Text("Goodbye, world!")
        }
    }
}

#Preview {
    ContentView()

}

//#Preview("iPhone SE") {
//    ContentView()
//}
//
//# {
//    ContentView()
//}

//struct ContentView_Previews : PreviewProvider {
//    static var previews: some View{
//        Group{
//            ContentView()
//                .previewDevice("iPhone SE (3rd generation)")
//                .previewDisplayName("iPhone SE")
//                
//            
//            ContentView()
//                .previewDevice(/*@START_MENU_TOKEN@*/"iPhone 11"/*@END_MENU_TOKEN@*/)
//                .previewDisplayName("iPhone 11")
//                    .environment(\.colorScheme, .dark)
//        }
//    }
//}
