//
//  MyVerticalGeoMetryBuilder.swift
//  SwiftUI_practice
//
//  Created by Jaehoon So on 2022/03/13.
//

import SwiftUI

enum Index {
    case one, two, three
}

struct MyVerticalGeoMetryBuilder: View {
    
    @State var index: Index = .one
    
    //지오메트리 프록시를 매개변수로 가지고 CGPoint를 반환하는 클로저
    let centerPosition: (GeometryProxy) -> CGPoint = { proxy in
        return CGPoint(x: proxy.frame(in: .local).midX,
                       y: proxy.frame(in: .local).midY)
    }
    
    var body: some View {
        GeometryReader { proxy in
            VStack(spacing: 0) {
                
                Button {
                    print("1번이 클릭되었습니다.")
                    withAnimation {
                        self.index = .one
                    }
                } label: {
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .frame(width: 50,height: proxy.size.height / 3)
                        .padding(.horizontal, self.index == .one ? 50 : 0)
                        .background(.red)
                } // Button
                    
                Button {
                    print("2번이 클릭되었습니다.")
                    withAnimation {
                        self.index = .two
                    }
                } label: {

                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .frame(width: 50,height: proxy.size.height / 3)
                        .padding(.horizontal, self.index == .two ? 50 : 0)
                        .background(.blue)
                } // Button
                
                Button {
                    print("3번이 클릭되었습니다.")
                    withAnimation {
                        self.index = .three
                    }
                } label: {
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .frame(width: 50,height: proxy.size.height / 3)
                        .padding(.horizontal, self.index == .three ? 50 : 0)
                        .background(.green)
                } // Button
                    
            } // VStack
            .position(centerPosition(proxy))
            .background(Color.yellow)
        } // GeometryReader
    }
}

struct MyVerticalGeoMetryBuilder_Previews: PreviewProvider {
    static var previews: some View {
        MyVerticalGeoMetryBuilder()
    }
}
