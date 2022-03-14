//
//  MyGeometryBuilder.swift
//  SwiftUI_practice
//
//  Created by Jaehoon So on 2022/03/13.
//

import SwiftUI

struct MyGeometryBuilder: View {
    var body: some View {
        
        GeometryReader { geometry in
            HStack(spacing: 0) {
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometry.size.width / 3)
                    .foregroundColor(Color.white)
                    .background(Color.red)
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometry.size.width / 3)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                
//                Text("3")
//                    .font(.largeTitle)
//                    .fontWeight(.black)
//                    .frame(width: geometry.size.width / 3)
//                    .foregroundColor(Color.white)
//                    .background(Color.green)
//                Text("4")
//                    .font(.largeTitle)
//                    .fontWeight(.black)
//                    .frame(width: 100)
//                    .foregroundColor(Color.white)
//                    .background(Color.purple)
            } // HStack
            .background(Color.yellow)
            .frame(width: geometry.size.width,
                   height: geometry.size.height,
                   alignment: .center)
        } // GeometryReader
        .background(Color.black)
        
        
    }
}

struct MyGeometryBuilder_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryBuilder()
    }
}
