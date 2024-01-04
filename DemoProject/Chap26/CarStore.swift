//
//  CarStore.swift
//  DemoProject
//
//  Created by 이수현 on 2024/01/04.
//

import SwiftUI
import Combine

class CarStore : ObservableObject {
    
    @Published var cars : [Car]
    
    init(cars : [Car] = []){
        self.cars = cars
    }
}

