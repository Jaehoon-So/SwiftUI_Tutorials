//
//  CircleImageView.swift
//  SwiftUI_Image_Tutorial
//
//  Created by Jaehoon So on 2022/03/08.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
//        Image(systemName: "flame.fill")
//            .font(.system(size: 200))
//            .foregroundColor(Color.yellow)
//            .shadow(color: .gray, radius: 2, x: 6, y: 10)
        Image("myImage")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300)
//            .aspectRatio(contentMode: .fill)
//            .clipped()
            .clipShape(Circle())
            .shadow(color: .gray, radius: 10, x: 5, y: 10)
            .overlay(
                Circle()
                    .foregroundColor(.black)
                    .opacity(0.1)
            
            )
            .overlay(
                Circle().stroke(Color.yellow, lineWidth: 10)
                    .padding(15)
            )
            .overlay(
                Circle().stroke(Color.orange, lineWidth: 10)
                    .padding(30)
            )
            .overlay(
                Circle().stroke(Color.blue, lineWidth: 10)
            )
            .overlay(
                Text("호호")
                    .foregroundColor(Color.white)
                    .font(.system(size: 40))
                    .fontWeight(.bold)
            )
            .edgesIgnoringSafeArea(.all)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
