//
//  ContentView.swift
//  DemoProject
//
//  Created by 이수현 on 2023/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(.largeTitle)
                .foregroundColor(.red)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        }
        .padding()
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
