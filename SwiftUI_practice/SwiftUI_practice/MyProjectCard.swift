//
//  MyProjectCard.swift
//  SwiftUI_practice
//
//  Created by Jaehoon So on 2022/03/09.
//

import SwiftUI

struct MyProjectCard: View {
    
    @State var shouldShowAlert: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Rectangle().frame(height: 0)
            Text("Jaehoon의 프로젝트")
                .font(.system(size: 23))
                .fontWeight(.black)
                .padding(.bottom, 5)
            Text("10 AM ~ 11 AM")
                .padding(.bottom, 20)
                .foregroundColor(.secondary)
            HStack {
                Image("1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(lineWidth: 3)
                            .foregroundColor(.green)
                    }
                
                Image("2")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
                    .overlay {
                        Circle().stroke(lineWidth: 3)
                            .foregroundColor(.orange)
                    }
                
                Image("3")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
                    .overlay {
                        Circle().stroke(lineWidth: 3)
                            .foregroundColor(.purple)
                        
                    }
                
                Spacer()
                
                Button {
                    print("확인 버튼이 클릭되었다.")
                    self.shouldShowAlert = true
                } label: {
                    Text("확인")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 80)
                        .background(Color.blue)
                        .cornerRadius(20)
                }.alert(isPresented: $shouldShowAlert) {
                    Alert(title: Text("알림창입니다.!!"),
                          message: Text("알림창을 닫아주세용!"),
                          dismissButton: Alert.Button.cancel(Text("삭제")))
                }
                

                    
            }
        }
        .padding()
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
