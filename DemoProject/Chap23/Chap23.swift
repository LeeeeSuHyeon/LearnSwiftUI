//
//  Chap23.swift
//  DemoProject
//
//  Created by 이수현 on 2023/12/28.
//

import SwiftUI

struct Chap23: View {
    
    @EnvironmentObject var timerData : TimerData
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Timer count = \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Button(action: resetCount){
                    Text("Reset Count")
                }
                NavigationLink(destination: SecondView()){
                    Text("Next Screen")
                }
                .padding()
            }
        }     
    }
    
    func resetCount(){
        timerData.resetCount()
    }
}


#Preview {
    Chap23().environmentObject(TimerData())
}
