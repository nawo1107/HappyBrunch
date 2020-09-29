//
//  ShoppingList.swift
//  Rezepte
//
//  Created by Josina Zotzmann on 29.09.20.
//

import SwiftUI
import Combine

struct ShoppingList: View {
    @ObservedObject var taskStore = TaskStore()
    @State var newToBuy : String = ""
    
    var listInput: some View {
        HStack {
            TextField("Was willst du einkaufen?", text: self.$newToBuy)                                    .font(.system(size: 16, weight: .light, design: .monospaced))
                .padding()
            Button(action: self.addNewToBuy, label: {
                Text("Hinzufügen")
            })
            Spacer()
        }.padding(.top, 20)
    }
    
    func addNewToBuy() {
        taskStore.tasks.append(Task(id: String(taskStore.tasks.count + 1), toBuyItem: newToBuy))
        self.newToBuy = ""
    }
        
    var body: some View {
        NavigationView {
            VStack {
                Text("Einkaufsliste")
                    .font(.system(size: 45, weight: .medium, design: .serif))
                    .padding(.leading)
                Spacer()
                VStack {
                    listInput.padding(.all, 10)
                }
                Spacer()
                
                List {
                    ForEach(self.taskStore.tasks) { task in
                        Text("• " + task.toBuyItem)
                            .font(.system(size: 16, weight: .light, design: .monospaced))
                            .padding()
                    }.onMove(perform: self.move)
                    .onDelete(perform: self.delete)
                }
                .navigationBarItems(trailing: EditButton())
            }
        }
    }
        
    
    
    func move(from source : IndexSet, to destination : Int) {
        taskStore.tasks.move(fromOffsets: source, toOffset: destination)
    }
    
    func delete(at offsets : IndexSet) {
        taskStore.tasks.remove(atOffsets: offsets)
    }
}


struct Task : Identifiable {
    var id = String()
    var toBuyItem = String()
}

class TaskStore : ObservableObject {
    @Published var tasks = [Task]()
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingList()
    }
}






