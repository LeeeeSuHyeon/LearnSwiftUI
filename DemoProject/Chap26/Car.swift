//
//  Car.swift
//  DemoProject
//
//  Created by 이수현 on 2024/01/03.
//

import Foundation
import SwiftUI

struct Car : Codable, Identifiable {
    var id : String
    var name : String
    
    var description : String
    var isHybrid : Bool
    
    var imageName : String
}
