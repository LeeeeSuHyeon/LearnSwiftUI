//
//  SecondView.swift
//  DemoProject
//
//  Created by 이수현 on 2023/12/28.
//

import SwiftUI

struct SecondView: View {
    
    @EnvironmentObject var timerData : TimerData
    
    var body: some View {
        VStack{
            Text("Second View")
                .font(.largeTitle)
            Text("Timer Count = \(timerData.timeCount)")
                .font(.headline)
        }
        .padding()
    }
}

#Preview {
    SecondView().environmentObject(TimerData())
}
