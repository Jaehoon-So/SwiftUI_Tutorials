//
//  ContentView.swift
//  SwiftUI_Text
//
//  Created by Jaehoon So on 2022/03/08.
//

import SwiftUI

struct ContentView: View {
    
    @State
    private var showAlert = false
    
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"
//        formatter.dateStyle = .short
        
        return formatter
    }()
    var today = Date()
    var trueOrFalse: Bool = false
    var num: Int = 123
    
    var body: some View {
        ZStack {
            VStack {
                Text("Hello, world!")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.regular)
                
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                    .tracking(0)
                
                    .font(.system(.body))
                    .multilineTextAlignment(.trailing)
                    .lineLimit(10)
                    .lineSpacing(10)
//                    .shadow(color: Color.red, radius: 1.5, x: 10, y: 10)
                    
                
                    .padding(.all, 20)
                    .background(Color.yellow)
                    .cornerRadius(10)
                
                    .padding(.all, 20)
                    .background(Color.green)
                    .cornerRadius(20)
                
                    .padding()
                    .background(Color.red)
                    
                
                Text("안녕하세요")
                    .background(.gray)
                    .foregroundColor(.white)
                    .font(.system(.title, design: .serif))
                
                Text("오늘의 날짜 입니다: \(today, formatter: ContentView.dateFormat)")
                
                Text("참 혹은 거짓 : \(String(trueOrFalse))") // 불리언을 출력하는 방법
                
                Text("숫자입니다 : \(num)") // 숫자 출력법
                
                Button("알림을 보려면 버튼을 클릭하세요") {
                    showAlert = true
                }
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("important title!"),
                          message:Text("This Message Appear!"),
                          primaryButton: Alert.Button.destructive(Text("Delete")) {
                        print("버튼이 툴림")
                    },
                          secondaryButton: Alert.Button.cancel(Text("No! Take me Back!"))
                    )
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
