//
//  ContentView.swift
//  SwiftUI_Image_Tutorial
//
//  Created by Jaehoon So on 2022/03/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                Image("myImage")
                    .frame(height: 10)
                    .offset(y: -1500)
                    .scaledToFill()
                
                CircleImageView()
                
                HStack {
                    NavigationLink {
                        MyWebView(urlToLoad: "https://www.youtube.com")
//                            .edgesIgnoringSafeArea(.all)
                    } label: {
                        Text("구독하러 가기")
                            .font(.system(size: 20))
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink {
                        MyWebView(urlToLoad: "https://www.youtube.com")
//                            .edgesIgnoringSafeArea(.all)
                    } label: {
                        Text("오픈카톡방 가기")
                            .font(.system(size: 20))
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
