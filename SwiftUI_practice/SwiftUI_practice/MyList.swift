//
//  MyList.swift
//  SwiftUI_practice
//
//  Created by Jaehoon So on 2022/03/11.
//

import SwiftUI

struct MyList: View {
    
    @Binding var isNavigationBarHidden: Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        if #available(iOS 14.0, *) {
            
        } else {
            UITableView.appearance().tableFooterView = UIView()
        }
        
        UITableView.appearance().separatorStyle = .none
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    var body: some View {
        
        
        List {
            Section(
                header:
                    Text("헤더입니다")
                    .font (.headline)
                    .foregroundColor(Color.black),
                footer: Text("footer")
            ) {
                ForEach(1...5, id: \.self) { itemIndex in
                    //                    Text("마이리스트 \(itemIndex)")
                    MyCard(icon: "flame.fill",
                           title: "유튜브 라이브 버닝",
                           start: "8 PM",
                           end: "10 PM",
                           bgColor: Color.purple)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            .listRowBackground(Color.yellow)
            
            Section(header: Text("내일 할일")) {
                ForEach(1...5, id: \.self) { itemIndex in
                    //                    Text("마이리스트 \(itemIndex)")
                    MyCard(icon: "flame.fill",
                           title: "유튜브 라이브 버닝",
                           start: "8 PM",
                           end: "10 PM",
                           bgColor: Color.blue)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            .listRowBackground(Color.gray)
        }
        .listStyle(.grouped)
        .navigationTitle("내 목록")
    }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
