//
//  MyCard.swift
//  SwiftUI_practice
//
//  Created by Jaehoon So on 2022/03/09.
//

import SwiftUI

struct MyCard: View {
    
    var icon: String
    var title: String
    var start: String
    var end: String
    var bgColor: Color
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(.white)
            VStack(alignment: .leading, spacing: 0) {
                Divider().opacity(0)
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                    .lineLimit(1)
                    .minimumScaleFactor(0.8)
                Spacer().frame(height: 8)
                Text("\(start) - \(end)")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
            }
            
        }
        .padding()
        .background(bgColor)
        .cornerRadius(20)
        
    }
}

struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(icon: "flame.fill",
               title: "유튜브 라이브 버닝",
               start: "8 PM",
               end: "10 PM",
               bgColor: Color.purple)
    }
}
