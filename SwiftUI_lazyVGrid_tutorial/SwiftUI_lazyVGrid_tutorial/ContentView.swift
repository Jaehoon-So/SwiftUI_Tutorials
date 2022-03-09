//
//  ContentView.swift
//  SwiftUI_lazyVGrid_tutorial
//
//  Created by Jaehoon So on 2022/03/09.
//

import SwiftUI

struct MyModel: Identifiable {
    let id = UUID()
    let title: String
    let content: String
}

extension MyModel {
    static var dummyDataArray: [MyModel] {
        (1...2000).map{ (number: Int) in
            MyModel(title: "타이틀: \(number)", content: "컨텐트: \(number)")
        }
    }
}

struct ContentView: View {
    
    var dummyDataArray = MyModel.dummyDataArray
    
    var body: some View {
        //ScrollView 로 감싸서 스크롤 가능하도록 설정
        ScrollView {
            // 레이지 버티칼 그리드 뷰
            // column은 호리젠탈 아이템 레이아웃을 설정하는 부분
            LazyVGrid(columns: [
                //flexible 은 하나만 채우는 것이고, adaptive는 여러개를 채운다.
                GridItem(.flexible(minimum: 100)),
                GridItem(.flexible(minimum: 100))
            ], spacing: 10) {
                
                ForEach(dummyDataArray, content: { (dataItem: MyModel) in
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(height: 120)
                        .overlay(
                            Text("\(dataItem.title)")
                        )
                })
                Text("PlaceHolder")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
