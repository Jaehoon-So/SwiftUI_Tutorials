//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by Jaehoon So on 2022/03/06.
//

import SwiftUI

struct ContentView: View {
    
    //@State 값의 변화를 감지해서 -> 뷰에 적용한다.
    @State
    private var isActivated: Bool = false
    
    var body: some View {
        NavigationView {
            
            VStack {
                HStack{
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                } // HStack
                .padding(isActivated ? 50.0 : 10.0)
                .background(isActivated ? Color.yellow : Color.black)
                //탬 제스처 추가
                .onTapGesture {
                    
                    //애니매이션과 함께
                    withAnimation {
                        self.isActivated.toggle()
                    }
                    print("HStack 이 클릭되었다.")
                
                }
                //네비게이션 버튼
                NavigationLink(destination: MyTextView(isActivated: $isActivated)) {
                    Text("네비게이션")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.orange)
                        .background(Color.white)
                        .cornerRadius(30)
                } .padding(.top, 50)
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


