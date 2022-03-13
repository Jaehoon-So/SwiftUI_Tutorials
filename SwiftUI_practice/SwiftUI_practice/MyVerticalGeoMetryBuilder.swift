//
//  MyVerticalGeoMetryBuilder.swift
//  SwiftUI_practice
//
//  Created by Jaehoon So on 2022/03/13.
//

import SwiftUI

struct MyVerticalGeoMetryBuilder: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .frame(width: 50,height: geometry.size.height / 4)
                    .background(.red)
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .frame(width: 50,height: geometry.size.height / 4)
                    .background(.blue)
                Text("3")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .frame(width: 50,height: geometry.size.height / 4)
                    .background(.green)
                    
                    
            } // VStack
            .frame(width: geometry.size.width,
                   height: geometry.size.height,
                   alignment: .center)
            .background(Color.yellow)
        } // GeometryReader
    }
}

struct MyVerticalGeoMetryBuilder_Previews: PreviewProvider {
    static var previews: some View {
        MyVerticalGeoMetryBuilder()
    }
}
