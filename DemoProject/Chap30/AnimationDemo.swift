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
////                .animation(Animation.linear(duration: 1).repeatCount(10, autoreverses: false))
////                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: true))
//       }
//    }
//}

//struct AnimationDemo: View {
//    
//    @State private var rotation : Double = 0
//    @State private var scale : CGFloat = 1
//    
//    var body: some View {
//        Button(action: {withAnimation(.linear (duration: 2)){
//                self.rotation = (self.rotation < 360 ? self.rotation + 60 : 0)
//            }
//            self.scale = (self.scale < 2.8 ? self.scale + 0.3 : 1)
//        }){
//            Text("Click to animate")
//                .scaleEffect(scale)
//                .rotationEffect(.degrees(rotation))
//       }
//    }
//}


//struct AnimationDemo: View {
//    
//    @State private var visiblity = false
//    
//    var body: some View {
//        VStack {
//            Toggle(isOn : $visiblity.animation(.linear(duration: 2))){
//                Text("Toggle Text Views")
//            }
//            .padding()
//            
//            if visiblity {
//                Text("Hello World")
//                    .font(.largeTitle)
//            }
//            
//            if !visiblity {
//                Text("Goodbye World")
//                    .font(.largeTitle)
//            }
//        }
//    }
//}



//struct AnimationDemo: View {
//
//    @State private var isSpinning : Bool = true
//    
//    var body: some View {
//        ZStack{
//            Circle()
//                .stroke(lineWidth: 2)
//                .foregroundColor(.blue)
//                .frame(width: 360, height: 360)
//            
//            Image(systemName: "forward.fill")
//                .font(.largeTitle)
//                .offset(y: -180)
//                .rotationEffect(.degrees(isSpinning ? 0 : 360))
//                .animation(Animation.linear(duration: 5).repeatForever(autoreverses: false))
//        }
//        .onAppear(){
//            self.isSpinning.toggle()
//        }
//    }
//}


//struct AnimationDemo: View {
//
//    @State private var isButtonVisible : Bool = true
//
//    var body: some View {
//        VStack{
//            Toggle(isOn : $isButtonVisible.animation(.linear(duration: 3))){
//                Text("Show/Hide Button")
//            }
//            .padding()
//            
//            if isButtonVisible {
//                Button(action: {}, label: {
//                    Text("Example Button")
//                })
//                .font(.largeTitle)
//                .transition(.fadeAndMove)
//            }
//        }
//    }
//}
//
//extension AnyTransition {
//    static var fadeAndMove : AnyTransition{
//        AnyTransition.opacity.combined(with: .move(edge: .top))
//    }
//}


struct AnimationDemo: View {

    @State private var isButtonVisible : Bool = true

    var body: some View {
        VStack{
            Toggle(isOn : $isButtonVisible.animation(.linear(duration: 3))){
                Text("Show/Hide Button")
            }
            .padding()
            
            if isButtonVisible {
                Button(action: {}, label: {
                    Text("Example Button")
                })
                .font(.largeTitle)
                .transition(.asymmetric(insertion: .scale, removal: .slide))
            }
        }
    }
}


#Preview {
    AnimationDemo()
}
