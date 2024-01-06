//
//  Chap22.swift
//  DemoProject
//
//  Created by 이수현 on 2023/12/27.
//

import SwiftUI

struct Chap22: View {
    
    var colors : [Color] = [.black, .red, .green, .blue] // 색상 객체 배열
    var colornames = ["Black", "Red", "Green", "Blue"]   // 색상 이름 배열
    
    @State private var colorIndex = 0
    @State private var rotation : Double = 0
    @State private var text : String = "Welcome to SwiftUI"
    
    var body: some View {
        VStack {
            Spacer()
            Text(text)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .rotationEffect(.degrees(self.rotation))
                .animation(.easeInOut(duration: 5))
                .foregroundColor(self.colors[self.colorIndex])
            Spacer()
            Divider()
            Slider(value: $rotation, in : 0 ... 360, step: 0.1)
                .padding()
            
            TextField("Enter the here", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Picker(selection: $colorIndex, label: Text("Color")){
                ForEach(0 ..< colornames.count){
                    Text(self.colornames[$0])
                        .foregroundColor(self.colors[$0])
                }
            }
            .padding()
        }
    }
}

#Preview {
    Chap22()
}
