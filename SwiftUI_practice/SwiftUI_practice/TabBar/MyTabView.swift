//
//  MyTabView.swift
//  SwiftUI_practice
//
//  Created by Jaehoon So on 2022/03/14.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        TabView {
            //보여질 화면
            MyView(title: "1번", bgColor: .orange)
                .tabItem {
                    Image(systemName: "airplane")
                    Text("1번")
                }
                .tag(0)
                .padding(.bottom, 1)
                .background(Color.white)
            MyView(title: "2번", bgColor: .blue)
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("1번")
                }
                .tag(1)
                .padding(.bottom, 1)
            MyView(title: "3번", bgColor: .green)
                .tabItem {
                    Image(systemName: "doc.fill")
                    Text("1번")
                }
                .tag(2)
                .padding(.bottom, 1)
        } // TabView
        .background(Color.gray)
        
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
