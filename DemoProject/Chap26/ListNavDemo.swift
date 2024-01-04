//
//  ListNavDemo.swift
//  DemoProject
//
//  Created by 이수현 on 2024/01/03.
//

import SwiftUI

struct ListNavDemo: View {
    
    @ObservedObject var carStore : CarStore = CarStore(cars: carData)
    
    var body: some View {
        NavigationView{
            List{
                ForEach(carStore.cars){ car in
                    ListCell(car : car)
                }
            }
        }
    }
}

struct ListCell: View {
    
    var car : Car
    
    var body: some View {
        NavigationLink(destination: CarDetail(selectedCar: car)){
            HStack {
                Image(car.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 60)
                Text(car.name)
            }
        }
    }
}


#Preview {
    ListNavDemo()
}
