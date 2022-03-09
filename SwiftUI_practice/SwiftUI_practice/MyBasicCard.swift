//
//  MyBasicCard.swift
//  SwiftUI_practice
//
//  Created by Jaehoon So on 2022/03/09.
//

import SwiftUI

struct MyBasicCard: View {
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "flame.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
            VStack(alignment: .leading, spacing: 0) {
                Divider().opacity(0)
                Text("유튜브 라이브 버닝")
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                Spacer().frame(height: 8)
                Text("8 PM - 10 PM")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
            }
            
        }
        .padding()
        .background(Color.purple)
        .cornerRadius(20)
        
    }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
