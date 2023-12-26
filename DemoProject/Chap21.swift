//
//  Chap21.swift
//  DemoProject
//
//  Created by 이수현 on 2023/12/26.
//

import SwiftUI

struct Chap21: View {
    
    @State private var wifiEnabled = true
    @State private var userName = ""
    
    var body: some View {
        VStack{
            Toggle(isOn: $wifiEnabled){
                Text("Enable Wi-Fi")
            }
        }
        TextField("Enter user name", text: $userName)
        Text(userName)
        Image(systemName:  wifiEnabled ? "wifi" : "wifi.slash")
    }
}

#Preview {
    Chap21()
}
