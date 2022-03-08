//
//  ContentView.swift
//  pracetice Project
//
//  Created by Jaehoon So on 2022/03/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text("Hello, world!")
                        .padding()
                    Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    
                }
                
                    
            }
            LazyHGrid(rows: 10) {
                
                Text("Placeholder")
                Text("Placeholder")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
