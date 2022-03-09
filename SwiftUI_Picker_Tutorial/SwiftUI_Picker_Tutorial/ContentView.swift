//
//  ContentView.swift
//  SwiftUI_Picker_Tutorial
//
//  Created by Jaehoon So on 2022/03/09.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectionValue = 0
    @State private var selectionColor = "레드"
    
    let myColorArray = ["레드", "그린", "블루"]
    
    func changeColor(index: Int) -> Color {
        switch index {
        case 0:
            return Color.red
        case 1:
            return Color.green
        case 2:
            return Color.blue
        default:
            return Color.red
        }
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Circle()
                .foregroundColor(self.changeColor(index: selectionValue))
                .frame(width: 50, height: 50)
                
            
            Text("세그먼트 value: \(selectionValue)")
            Text("선택된 색깔: \(myColorArray[selectionValue])")
            
            Picker(selection: $selectionValue,
                   label: Text(""),
                   content: {
                Text("레드").tag(0)
                Text("그린").tag(1)
                Text("블루").tag(2)
            }).pickerStyle(SegmentedPickerStyle())
            
            Picker(selection: $selectionValue,
                   label: Text(""),
                   content: {
                Text("레드").tag(0)
                Text("그린").tag(1)
                Text("블루").tag(2)
            })
                .frame(width: 50, height: 100)
                .clipped()
                .padding(5)
                .border(self.changeColor(index: selectionValue), width: 5)
    
        }.padding(50)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
