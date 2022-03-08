//
//  MyVStackView.swift
//  SwiftUI_tutorial_#1
//
//  Created by Jaehoon So on 2022/03/06.
//

import SwiftUI

struct MyVStackView: View {
    
    //데이터를 연동시킨다.
    //외부에서 접근해야 한다면 private키워드를 작성하지 않는다.
    @Binding
    var isActivated: Bool
    
    //바인딩을 생성하기 위해서는 기본생성자를 설정해야 한다.
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    var body: some View {
        VStack{
            Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 40))
            Text("2!")
                .fontWeight(.bold)
                .font(.system(size: 40))
            Text("3!")
                .fontWeight(.bold)
                .font(.system(size: 40))
        }
        .background(self.isActivated ? Color.green : Color.red)
        .padding(self.isActivated ? 10 : 0)
    }
}

struct MyVStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVStackView()
    }
}
