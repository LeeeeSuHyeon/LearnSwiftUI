//
//  Chap21.swift
//  DemoProject
//
//  Created by 이수현 on 2023/12/26.
//

//import SwiftUI

// 상태 프로퍼티
//struct Chap21: View {
//    
//    @State private var wifiEnabled = true
//    @State private var userName = ""
//    
//    var body: some View {
//        VStack{
//            Toggle(isOn: $wifiEnabled){
//                Text("Enable Wi-Fi")
//            }
//        }
//        TextField("Enter user name", text: $userName)
//        Text(userName)
//        WifiImageView(wifiEnabled: $wifiEnabled)
//    }
//}
//
//struct WifiImageView : View {
//    
//    @Binding var wifiEnabled : Bool
//    
//    var body: some View{
//        Image(systemName:  wifiEnabled ? "wifi" : "wifi.slash")
//    }
//}


import Foundation
import Combine

// Observable
class DemoData : ObservableObject {
    @Published var userCount = 0
    @Published var currentUser = ""
    
    init(){
        // 데이터 초기화 코드
        updateData()
    }
    func updateData(){
        // 데이터를 최신 상태로 유지하기 위한 코드
    }
}


import SwiftUI

struct Chap21: View {
    
    @ObservedObject var demoData : DemoData
    
    var body: some View {
        Text("\(demoData.currentUser), you are user number \(demoData.userCount)")
            
    }
}

#Preview {
    Chap21(demoData: DemoData())
}
