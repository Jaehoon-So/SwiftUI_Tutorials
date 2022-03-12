//
//  ContentView.swift
//  SwiftUI_practice
//
//  Created by Jaehoon So on 2022/03/09.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNavigationBarHidden: Bool = false
    
    var body: some View {
        NavigationView {
            
            ZStack(alignment: .bottomTrailing) {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        NavigationLink(destination: MyList(isNavigationBarHidden: self.$isNavigationBarHidden)) {
                            Image(systemName: "line.3.horizontal")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }
                        Spacer()
                        
                        NavigationLink(destination:
                                        MyProfile()
                        ) {
                            Image(systemName: "person.crop.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }
                        
                        
                    }
                    .padding(.bottom, 20)
                    
                    Text("To do List")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .padding(.horizontal, 10)
                        .padding(.bottom, 10)
                    ScrollView {
                        VStack {
                            MyProjectCard()
                            MyCard(icon: "gamecontroller.fill",
                                   title: "리그오브레전드 플레이",
                                   start: "10 PM",
                                   end: "11 PM",
                                   bgColor: .blue)
                            MyCard(icon: "tv.fill",
                                   title: "영화 보기",
                                   start: "8 PM",
                                   end: "9 PM",
                                   bgColor: .orange)
                            MyCard(icon: "function",
                                   title: "수학공부하기",
                                   start: "12 PM",
                                   end: "2 PM",
                                   bgColor: .purple)
                            
                        }
                        
                    }
                }
                .padding(.top, 10)
                .padding(.horizontal, 10)
                
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 50, height: 50)
                    .overlay(
                        Image(systemName: "plus")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                        
                    )
                    .padding(10)
                    .shadow(radius: 20)
                
            }
            .navigationTitle("뒤로가기")
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear {
                self.isNavigationBarHidden = true
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
