//
//  TabViewDemo.swift
//  DemoProject
//
//  Created by 이수현 on 2024/01/06.
//

import SwiftUI

struct TabViewDemo: View {
    
    @State private var selection = 1
    
    var body: some View {
        TabView(selection : $selection){
            Text("First Content View")
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Screen One")
                }.tag(1)
            Text("Second Content View")
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Screen Two")
                }.tag(2)
            Text("Third Content View")
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("Screen Three")
                }.tag(3)
        }
        .font(.largeTitle)
    }
}

#Preview {
    TabViewDemo()
}
