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





//struct GestureDemo: View {
//    
//    @State private var magnifiation : CGFloat = 1.0
//    
//    var body: some View {
//        let magnificationGesture = MagnificationGesture(minimumScaleDelta: 0)
//            .onChanged{value in
//                self.magnifiation = value
//            }
//            .onEnded{_ in
//                print("Gesture Ended")
//            }
//            
//        return Image(systemName: "hand.point.right.fill")
//            .resizable()
//            .font(.largeTitle)
//            .scaleEffect(magnifiation)
//            .gesture(magnificationGesture)
//            .frame(width: 100, height: 90)
//    }
//}



//struct GestureDemo: View {
//    
//    @GestureState private var offset : CGSize = .zero
//    
//    var body: some View {
//        let drag = DragGesture()
//            .updating($offset){dragValue, state, transaction in
//                state = dragValue.translation
//            }
//            
//        return Image(systemName: "hand.point.right.fill")
//            .font(.largeTitle)
//            .offset(offset)
//            .gesture(drag)
//    }
//}



//struct GestureDemo: View {
//    
//    @GestureState private var offset : CGSize = .zero
//    @GestureState private var longPress : Bool = false
//    
//    var body: some View {
//        let longPressAndDrag = LongPressGesture(minimumDuration: 1.0)
//            .updating($longPress){value, state, transition in
//                state = value
//            }
//            .simultaneously(with: DragGesture())
//            .updating($offset){ value, state, transaction in
//                state = value.second?.translation ?? .zero
//            }
//                      
//        return Image(systemName: "hand.point.right.fill")
//            .foregroundColor(longPress ? .red : .blue)
//            .font(.largeTitle)
//            .offset(offset)
//            .gesture(longPressAndDrag)
//    }
//}


struct GestureDemo: View {
    
    @GestureState private var offset : CGSize = .zero
    @State private var dragEnabled : Bool = false
    
    var body: some View {
        let longPressBeforeDrag = LongPressGesture(minimumDuration: 3.0)
            .onEnded({ _ in
                self.dragEnabled = true
            })
            .sequenced(before: DragGesture())
            .updating($offset){ value, state, transaction in
                switch value {
                case .first(true) :
                    print("Long Press in progres")
                    
                case .second(true, let drag) :
                    state = drag?.translation ?? .zero
                    
                default : break
                }
            }
            .onEnded { value in
                self.dragEnabled = false
            }
                      
        return Image(systemName: "hand.point.right.fill")
            .foregroundColor(dragEnabled ? .green : .blue)
            .font(.largeTitle)
            .offset(offset)
            .gesture(longPressBeforeDrag)
    }
}


#Preview {
    GestureDemo()
}
