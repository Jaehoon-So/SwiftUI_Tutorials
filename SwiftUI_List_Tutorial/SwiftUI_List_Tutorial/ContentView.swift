//
//  ContentView.swift
//  SwiftUI_List_Tutorial
//
//  Created by Jaehoon So on 2022/03/07.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
            
            List {
                Text("list 1")
                Text("list 2")
                Text("List 3")
            }.listStyle(.)
            
            List {
                Section(header: Text("Important!!")) {
                    TaskRow()
                    TaskRow()
                    TaskRow()
                }
                
                
                Section(header: Text("Normal Things")) {
                    TaskRow()
                    TaskRow()
                    TaskRow()

                }
            }
        }
        
    }
}

//MARK: - task Row
struct TaskRow: View {
    var body: some View {
        Text("Text Item")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
