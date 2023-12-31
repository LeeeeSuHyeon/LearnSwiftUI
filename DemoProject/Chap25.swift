//
//  Chap25.swift
//  DemoProject
//
//  Created by 이수현 on 2023/12/30.
//

import SwiftUI

//struct Chap25: View {
//    var body: some View {
//        List{
//            HStack{
//                Image(systemName: "trash.circle.fill")
//                Text("Take out the trash")
//            }
//            HStack{
//                Image(systemName: "person.2.fill")
//                Text("Pick up the kids")
//            }
//            HStack{
//                Image(systemName: "car.fill")
//                Text("Wash the car")
//            }
//        }
//    }
//    
//    
//    
//    var listData : [ToDoItem] = [
//        ToDoItem(task : "Take out the trash", imageName : "trash.circle.fill"),
//        ToDoItem(task : "Pick up the kids", imageName : "person.2.fill"),
//        ToDoItem(task : "Wash the car", imageName : "car.fill")
//    ]
//    
//
//}

// 25.2
//struct ToDoItem : Identifiable {
//    var id = UUID()
//    var task : String
//    var imageName : String
//}
//
//
//struct Chap25: View {
//    var body: some View {
//        List(listData){ item in
//            HStack{
//                Image(systemName: item.imageName)
//                Text(item.task)
//            }
//        }
//    }
//    
//    
//    
//    var listData : [ToDoItem] = [
//        ToDoItem(task : "Take out the trash", imageName : "trash.circle.fill"),
//        ToDoItem(task : "Pick up the kids", imageName : "person.2.fill"),
//        ToDoItem(task : "Wash the car", imageName : "car.fill")
//    ]
//}


//// 25.2
//struct ToDoItem : Identifiable {
//    var id = UUID()
//    var task : String
//    var imageName : String
//}
//
//
//struct Chap25: View {
//    
//    var listData : [ToDoItem] = [
//        ToDoItem(task : "Take out the trash", imageName : "trash.circle.fill"),
//        ToDoItem(task : "Pick up the kids", imageName : "person.2.fill"),
//        ToDoItem(task : "Wash the car", imageName : "car.fill")
//    ]
//    
//    @State var toggleStatus = true
//    
//    var body: some View {
//        List {
//            Section(header : Text("Setting")){
//                Toggle(isOn : $toggleStatus){
//                    Text("Allow Notification")
//                }
//            }
//           
//            Section(header : Text("To Do Tasks")){
//                ForEach(listData){ item in
//                    HStack{
//                        Image(systemName: item.imageName)
//                        Text(item.task)
//                    }
//                }
//            }
//        }
//    }
//}


// 25.3
//struct ToDoItem : Identifiable {
//    var id = UUID()
//    var task : String
//    var imageName : String
//}
//
//
//struct Chap25: View {
//    
//    var listData : [ToDoItem] = [
//        ToDoItem(task : "Take out the trash", imageName : "trash.circle.fill"),
//        ToDoItem(task : "Pick up the kids", imageName : "person.2.fill"),
//        ToDoItem(task : "Wash the car", imageName : "car.fill")
//    ]
//    
//    @State var toggleStatus = true
//    
//    var body: some View {
//        NavigationView{
//            List {
//                Section(header : Text("Setting")){
//                    Toggle(isOn : $toggleStatus){
//                        Text("Allow Notification")
//                    }
//                }
//               
//                Section(header : Text("To Do Tasks")){
//                    ForEach(listData){ item in
//                        HStack{
//                            NavigationLink(destination: Text(item.task)){
//                                Image(systemName: item.imageName)
//                                Text(item.task)
//                            }
//                        }
//                    }
//                }
//            }
//            .navigationTitle(Text("To Do List"))
//        }
//    }
//}


// 25.4
struct ToDoItem : Identifiable {
    var id = UUID()
    var task : String
    var imageName : String
}


struct Chap25: View {
    
    var listData : [ToDoItem] = [
        ToDoItem(task : "Take out the trash", imageName : "trash.circle.fill"),
        ToDoItem(task : "Pick up the kids", imageName : "person.2.fill"),
        ToDoItem(task : "Wash the car", imageName : "car.fill")
    ]
    
    @State var toggleStatus = true
    
    var body: some View {
        NavigationView{
            List {
                Section(header : Text("Setting")){
                    Toggle(isOn : $toggleStatus){
                        Text("Allow Notification")
                    }
                }
               
                Section(header : Text("To Do Tasks")){
                    ForEach(listData){ item in
                        HStack{
                            NavigationLink(destination: Text(item.task)){
                                Image(systemName: item.imageName)
                                Text(item.task)
                            }
                        }
                    }
                    .onDelete(perform: deleteItem)
                    .onMove(perform : moveItem)
                }
            }
            .navigationTitle(Text("To Do List"))
            .navigationBarItems(trailing: EditButton())
        }
        
        func deleteItem(at offsets: IndexSet){
            // 데이터 소스에서 항목을 삭제하는 코드
        }
        
        func moveItem(from source : IndexSet, to destination : Int){
            // 항목을 재배열 하는 코드
        }
    }
}


#Preview {
    Chap25()
}
