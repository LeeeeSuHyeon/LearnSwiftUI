//
//  GestureDemo.swift
//  DemoProject
//
//  Created by 이수현 on 2024/01/11.
//

import SwiftUI

//struct GestureDemo: View {
//    
//    let tap = TapGesture()
//                .onEnded{_ in
//                    print("Tapped")
//                }
//    
//    var body: some View {
//        Image(systemName: "hand.point.right.fill")
//            .gesture(tap)
//    }
//}


//struct GestureDemo: View {
//    
//    let tap = TapGesture(count: 2)
//                .onEnded{_ in
//                    print("Tapped")
//                }
//    
//    var body: some View {
//        Image(systemName: "hand.point.right.fill")
//            .gesture(tap)
//    }
//}


//struct GestureDemo: View {
//    
//    let longPress = LongPressGesture()
//                .onEnded{_ in
//                    print("Long Press")
//                }
//    
//    var body: some View {
//        Image(systemName: "hand.point.right.fill")
//            .gesture(longPress)
//    }
//}


//
//struct GestureDemo: View {
//    
//    let longPress = LongPressGesture(minimumDuration: 5, maximumDistance: 25)
//                .onEnded{_ in
//                    print("Long Press")
//                }
//    
//    var body: some View {
//        Image(systemName: "hand.point.right.fill")
//            .gesture(longPress)
//    }
//}





struct GestureDemo: View {
    var body: some View {
        let magnificationGesture = MagnificationGesture(minimumScaleDelta: 0)
            .onEnded{_ in
                print("Gesture Ended")
            }
        
        return Image(systemName: "hand.point.right.fill")
            .resizable()
            .font(.largeTitle)
            .gesture(magnificationGesture)
            .frame(width: 100, height: 90)
    }
}

#Preview {
    GestureDemo()
}
