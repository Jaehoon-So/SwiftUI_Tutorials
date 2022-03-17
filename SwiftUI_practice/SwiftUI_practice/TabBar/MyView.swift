//
//  MyView.swift
//  SwiftUI_practice
//
//  Created by Jaehoon So on 2022/03/14.
//

import SwiftUI

struct MyView: View {
    var title: String
    var bgColor: Color
    
    var body: some View {
        ZStack {
            bgColor
                .edgesIgnoringSafeArea(.all)
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.white)
        } // ZStack
        .animation(.none)
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(title: "마이뷰", bgColor: Color.green)
    }
}
