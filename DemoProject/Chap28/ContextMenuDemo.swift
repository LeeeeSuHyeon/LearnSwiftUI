//
//  ContextMenuDemo.swift
//  DemoProject
//
//  Created by 이수현 on 2024/01/06.
//

import SwiftUI

struct ContextMenuDemo: View {
    
    @State private var foregroudColor : Color = Color.black
    @State private var backgroundColor : Color = Color.white
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.largeTitle)
            .padding()
            .foregroundColor(foregroudColor)
            .background(backgroundColor)
            .contextMenu{
                Button(action: {
                    self.foregroudColor = .black
                    self.backgroundColor = .white
                }){
                    Text("Normal Colors")
                    Image(systemName: "paintbrush")
                }
                
                Button(action: {
                    self.foregroudColor = .white
                    self.backgroundColor = .black
                }){
                    Text("Inverted Colors")
                    Image(systemName: "paintbrush.fill")
                }
            }
    }
}

#Preview {
    ContextMenuDemo()
}
