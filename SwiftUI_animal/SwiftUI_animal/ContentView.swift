//
//  ContentView.swift
//  SwiftUI_animal
//
//  Created by Jaehoon So on 2022/03/11.
//

import SwiftUI

struct ContentView: View {
    
    @State
    var isNavigationHidden: Bool = false
    
    var body: some View {
        NavigationView {
            TextField("", text: <#T##Binding<String>#>)
        }
        .navigationBarHidden(isNavigationHidden)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
