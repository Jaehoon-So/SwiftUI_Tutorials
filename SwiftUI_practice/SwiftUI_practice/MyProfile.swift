//
//  MyProfile.swift
//  SwiftUI_practice
//
//  Created by Jaehoon So on 2022/03/13.
//

import SwiftUI

struct MyProfile: View {
    
    @Binding var isNavigationBarHidden: Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .strokeBorder(lineWidth: 10)
                            .foregroundColor(.yellow)
                    )
                    .shadow(color: .gray, radius: 10)
                    .padding(.bottom, 20)
                
                Text("개발하는게 좋아!")
                    .fontWeight(.bold)
                    .font(.system(size: 35))
                    .padding(.bottom, 10)
                
                Text("구독 좋아요 부탁드립니다!")
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                
                HStack {
                    Button {
                        
                    } label: {
                        Text("구독하러가기")
                            .fontWeight(.heavy)
                            .font(.system(size: 20))
                            .foregroundColor(Color.white)
                            .padding()
                            .frame(width: 150)
                            .background(Color.red)
                            .cornerRadius(20)
                        
                    }
                    
                    Button {
                        
                    } label: {
                        Text("오픈깨톡방 가기")
                            .fontWeight(.heavy)
                            .font(.system(size: 20))
                            .foregroundColor(Color.white)
                            .padding()
                            .frame(width: 180)
                            .background(Color.orange)
                            .cornerRadius(20)
                        
                    }
                    //                        Button()
                } // HStack
                .padding()
                
            } // VStack
            
            
        } // ScrollView
        .navigationTitle("내 프로필")
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {

                NavigationLink {
                    Text("설정 화면입니다~~")
                        .font(.largeTitle)
                        .fontWeight(.black)
                } label: {
                    Image(systemName: "gear")
                        .font(.system(size: 20))
                        .foregroundColor(Color.black)
                }
            }
            
        }
    }
}

struct MyProfile_Previews: PreviewProvider {
    static var previews: some View {
        MyProfile()
    }
}
