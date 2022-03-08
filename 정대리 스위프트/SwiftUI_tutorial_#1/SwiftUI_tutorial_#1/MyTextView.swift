//
//  MyTextView.swift
//  SwiftUI_tutorial_#1
//
//  Created by Jaehoon So on 2022/03/06.
//

import SwiftUI

struct MyTextView: View {
    
    
    //데이터를 연동시킨다.
    //외부에서 접근해야 한다면 private키워드를 작성하지 않는다.
    @Binding
    var isActivated: Bool
    
    //바인딩을 생성하기 위해서는 기본생성자를 설정해야 한다.
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    @State
    private var index: Int = 0
    
    //배경색 배열 준비
    private let backgroundColorsArray = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange
    ]
    
    var body: some View {
        VStack {
            Spacer()
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       minHeight: 0,
                       maxHeight: 100)
            Text("활성화 상태: \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(self.isActivated ? .yellow : .green)
                .background(.black)
            
            
            Spacer()
        }
        .background(backgroundColorsArray[index])
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            print("배경 아이템이 선택되었다.")
            self.index += 1
            self.index %= backgroundColorsArray.count
        }
    }
}

struct MyTextView_Preview: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
