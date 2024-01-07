//
//  DrawDemo.swift
//  DemoProject
//
//  Created by 이수현 on 2024/01/07.
//

import SwiftUI

//struct DrawDemo: View {
//    var body: some View {
//        Circle()
//            .fill(.red)
//            .frame(width: 200, height: 200)
//    }
//}

//struct DrawDemo: View {
//    var body: some View {
//        Capsule()
//            .stroke(lineWidth: 10)
//            .foregroundColor(.blue)
//            .frame(width: 200, height: 100)
//    }
//}


//struct DrawDemo: View {
//    var body: some View {
//        RoundedRectangle(cornerRadius: CGFloat(20))
//            .stroke(style: StrokeStyle(lineWidth: CGFloat(8), dash: [CGFloat(10)]))
//            .foregroundColor(.blue)
//            .frame(width: 200, height: 100)
//    }
//}

//struct DrawDemo: View {
//    var body: some View {
//        Ellipse()
//            .stroke(style: StrokeStyle(lineWidth: 20,
//                    dash: [CGFloat(10), CGFloat(5), CGFloat(2)],
//                    dashPhase: CGFloat(10)))
//            .foregroundColor(.blue)
//            .frame(width: 250, height: 150)
//    }
//}



//struct DrawDemo: View {
//    var body: some View {
//        Ellipse()
//            .fill(Color.red)
//            .overlay(Ellipse().stroke(.blue, lineWidth: 10))
//            .frame(width: 250, height: 150)
//    }
//}

//struct DrawDemo: View {
//    var body: some View {
//        Path { path in
//            path.move(to: CGPoint(x: 10, y: 0))
//            path.addLine(to: CGPoint(x: 10, y: 350))
//            path.addLine(to: CGPoint(x: 300, y: 300))
//            path.closeSubpath()
//        }
//    }
//}


//struct DrawDemo: View {
//    var body: some View {
//        Path { path in
//            path.move(to: CGPoint(x: 10, y: 0))
//            path.addLine(to: CGPoint(x: 10, y: 350))
//            path.addLine(to: CGPoint(x: 300, y: 300))
//            path.closeSubpath()
//        }
//        .fill(.green)
//    }
//}



//struct DrawDemo: View {
//    var body: some View {
//        MyShape()
//            .fill(.red)
//            .frame(width: 360, height: 350)
//    }
//}
//
//
//struct MyShape : Shape {
//    func path(in rect: CGRect) -> Path {
//        var path = Path()
//        
//        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
//        path.addQuadCurve(to: CGPoint(x: rect.minX, y: rect.maxY),
//                          control: CGPoint(x: rect.midX, y: rect.midY))
//        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
//        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
//        path.closeSubpath()
//        return path
//    }
//}

//struct DrawDemo: View {
//    
//    let colors = Gradient(colors: [.red, .yellow, .green, .blue, .purple])
//    
//    var body: some View {
//        Circle()
//            .fill(RadialGradient(gradient: colors,
//                                 center: .center,
//                                 startRadius: CGFloat(0),
//                                 endRadius: CGFloat(100)))
//    }
//}


//struct DrawDemo: View {
//    
//    let colors = Gradient(colors: [.red, .yellow, .green, .blue, .purple])
//    
//    var body: some View {
//        Circle()
//            .fill(AngularGradient(gradient: colors, center: .center))
//    }
//}



//struct DrawDemo: View {
//    
//    let colors = Gradient(colors: [.red, .yellow, .green, .blue, .purple])
//    
//    var body: some View {
//        Rectangle()
//            .fill(LinearGradient(gradient: colors,
//                                 startPoint: .topLeading,
//                                 endPoint: .bottomTrailing))
//    }
//}



struct MyShape : Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addQuadCurve(to: CGPoint(x: rect.minX, y: rect.maxY),
                          control: CGPoint(x: rect.midX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}

struct DrawDemo: View {
    
    let colors = Gradient(colors: [.red, .yellow, .green, .blue, .purple])
    
    var body: some View {
        MyShape()
            .fill(RadialGradient(gradient: colors,
                                 center: .center,
                                 startRadius: CGFloat(0),
                                 endRadius: CGFloat(300)))
            .background(LinearGradient(gradient: Gradient(colors: [.black, .white]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing))
            .frame(width: 360, height: 350)
    }
}



#Preview {
    DrawDemo()
}
