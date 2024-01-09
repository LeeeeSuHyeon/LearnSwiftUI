//
//  AnimationDemo.swift
//  DemoProject
//
//  Created by 이수현 on 2024/01/08.
//

import SwiftUI

//struct AnimationDemo: View {
//    
//    @State private var rotation : Double = 0
//    @State private var scale : CGFloat = 1
//    
//    var body: some View {
//        Button(action: {
//            self.rotation = (self.rotation < 360 ? self.rotation + 60 : 0)
//            self.scale = (self.scale < 2.8 ? self.scale + 0.3 : 1)
//        }){
//            Text("Click to animate")
//                .scaleEffect(scale)
//                .rotationEffect(.degrees(rotation))
//                .animation(.spring(response: 1, dampingFraction: 0.2, blendDuration: 0))
//        }
//    }
//}


struct AnimationDemo: View {
    
    @State private var rotation : Double = 0
    @State private var scale : CGFloat = 1
    
    var body: some View {
        Button(action: {
            self.rotation = (self.rotation < 360 ? self.rotation + 60 : 0)
            self.scale = (self.scale < 2.8 ? self.scale + 0.3 : 1)
        }){
            Text("Click to animate")
                .scaleEffect(scale)
                .rotationEffect(.degrees(rotation))
//                .animation(Animation.linear(duration: 1).repeatCount(10, autoreverses: false))
//                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: true))
       }
    }
}

#Preview {
    AnimationDemo()
}
