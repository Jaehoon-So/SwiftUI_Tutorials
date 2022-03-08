//
//  MyWebView.swift
//  SwiftUI_WebView_Tutorial
//
//  Created by Jaehoon So on 2022/03/08.
//

import SwiftUI
import WebKit

// UIKit의  UIView를 사용할 수 있도록 한다.
// SwiftUI에서 UIViewContoller를 사용하고 싶다면
// UIViewControllerRepresentable 사용
struct MyWebView: UIViewRepresentable {

    var urlToLoad: String
    
    //UIView 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }
    
    //업데이트 UIView
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
        
    }
}

struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(urlToLoad: "Https://www.naver.com")
    }
}
