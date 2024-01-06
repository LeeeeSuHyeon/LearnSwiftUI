//
//  ContentView.swift
//  DemoProject
//
//  Created by 이수현 on 2023/12/20.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
////        Text("Hello, world!")
////        Text("Hello, world!")   // 유효하지 않은 구조
//        
//        
//        
//        VStack {
//            VStack {
//                Text("Text1")
//                Text("Text2")
                // 커스텀 뷰의 Text 뷰들의 폰트를 largeTitle 폰트로 변경
//                MyHStackView()
//                    .font(.largeTitle)
//            }
//            Text("Text5")
//        }
//        
////        Text("Hello, ") + Text("how ") + Text("are you?")
//        
//        
////        var myString = "Welcome to SwiftUI"
////        return VStack{
////            Text("Hello, world!")
////            Text("Goodbye, world!")
////        }
//    }
//}
//
//struct MyHStackView : View{
//    var body: some View {
//        HStack {
//            Text("Text3")
//            Text("Text4")
//        }
//    }
//}


//struct ContentView : View {
//    
//    let carStack = HStack{
//        Text("Car Image")
//        // 이미지 뷰가 허용하는 겅간 안에 이미지를 정배율로 표현
//        Image(systemName: "car.fill")
//    }
//    
//    var body: some View {
//        Text("Text 1")
//            .modifier(StandardTitle())
//        Text("Text 2")
//            .modifier(StandardTitle())
//        
//        
//        
//        
//        
////        Text("Sample Text")
////            .padding()
////            .border(Color.black)
////
//        
//        
////        Text("Sample Text")
////            .font(.custom("Copperplate", size: 70))
////        VStack {
////            // 폰트와 포그라운드 색상 변경
////            Text("Main Title")
////                .font(.headline)
////                .foregroundStyle(.red)
////
////            carStack
////                
////        }
//    }
//}

//struct StandardTitle : ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .font(.largeTitle)
//            .background(.white)
//            .border(.gray, width: 0.2)
//            .shadow(color: .black, radius: 5, x: 0, y: 5)
//    }
//}


// 19-10
//struct ContentView : View {
//    var body: some View {
////        Button(action: buttonPressed, label: {
////            Text("Click Me")
////        })
//        
//        // 클로저 사용
////        Button(action: {
////            // 동작 코드
////        }, label: {
////            Text("Click Me")
////        })
//        
//        Button(action: {print("Hello")}, label: {
//            Image(systemName: "square.and.arrow.down")
//        })
//    }
//    
//    
//    func buttonPressed(){
//        // 동작 코드
//    }
//}


//19-11
//struct ContentView : View {
//    var body: some View {
//        Text("Hello World")
//            .onAppear(perform: {
//                // 뷰가 나타날 때 수행될 코드
//            })
//            .onDisappear(perform: {
//                // 뷰가 사라질 떄 수행될 코드
//            })
//    }
//}

// 19-12
struct ContentView : View {
    var body: some View {
        MyVStack{
            Text("Text 1")
            Text("Text 1")
            HStack{
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star")
            }
        }
    }
}

// 아래는 3개의 텍스트 뷰가 VStack 안에 포함되며 임의의 간격과 폰트 설정으로 된 하위 뷰
//struct MyVStack: View {
//    var body: some View {
//        VStack(spacing: 10){
//            Text("Text Item 1")
//            Text("Text Item 2")
//            Text("Text Item 3")
//        }
//        .font(.largeTitle)
//    }
//}

// ViewBuilder 사용
struct MyVStack<Content: View>: View {
    let content : () -> Content
    init(@ViewBuilder content : @escaping () -> Content){
        self.content = content
    }
    var body: some View {
        VStack(spacing: 10){
            content()
        }
        .font(.largeTitle)
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
