//
//  MyNavigationView.swift
//  SwiftUI_practice
//
//  Created by Jaehoon So on 2022/03/12.
//

import SwiftUI

struct MyNavigationView: View {
    var body: some View {
        NavigationView {
            MyList()
                .navigationTitle("안녕하세요")
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            print("haha")
                        } label: {
                            Text("호호")
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink {
                            Text("넘어온 화면입니다.")
                        } label: {
//                            Text("네비게이션")
                            Image(systemName: "bookmark.fill")
                                .font(.system(size: 20))
                                .foregroundColor(.green)

                        }

                    }
                }
        }
        
    }
}

struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}
