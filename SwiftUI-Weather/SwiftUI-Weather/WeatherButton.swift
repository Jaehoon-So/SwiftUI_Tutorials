//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Jaehoon So on 2022/03/06.
//

import SwiftUI

struct WeatherButtonText: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .cornerRadius(10)
            .font(.system(size: 20, weight: .bold, design: .default))
    }
}
