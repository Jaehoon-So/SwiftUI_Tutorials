//
//  ContentView.swift
//  SwiftUI_WebView_Tutorial
//
//  Created by Jaehoon So on 2022/03/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        MyWebView(urlToLoad: "https://www.naver.com")
        
        NavigationView {
            HStack {
                NavigationLink(destination:
                    MyWebView(urlToLoad: "https://www.naver.com")
                    .edgesIgnoringSafeArea(.all)
                ) {
                    Text("네이버")
                        .fontWeight(.semibold)
                        .padding(20)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.system(size: 20))
                }
                NavigationLink(destination:
                    MyWebView(urlToLoad: "https://www.daum.net")
                                .edgesIgnoringSafeArea(.all)
                ) {
                    Text("다음")
                        .fontWeight(.semibold)
                        .padding(20)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.system(size: 20))
                }
                NavigationLink(destination:
                    MyWebView(urlToLoad: "https://www.google.co.kr")
                    .edgesIgnoringSafeArea(.all)
                ) {
                    Text("구글")
                        .fontWeight(.semibold)
                        .padding(20)
                        .background(LinearGradient(gradient: Gradient(colors: [.red, .green, .blue]),
                                                   startPoint: .topLeading,
                                                   endPoint: .bottomTrailing))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.system(size: 20))
                }
                
                Link(destination: URL(string: "https://www.naver.com")!) {
                    Text("네이버로 이동하자!")
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
