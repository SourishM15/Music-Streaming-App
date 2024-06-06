//
//  Menu1.swift
//  Music Streaming App
//
//  Created by 64018011 on 4/18/24.
//

import SwiftUI

let systemGold = Color(red: 0.98, green: 0.84, blue: 0.592)

struct Menu1: View {
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 430, height: 60)
                    .background(Color(red: 0.26, green: 0.17, blue: 0.02))
                    .frame(width: 320, height: 759, alignment: .top)
                 
                
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 610, height: 63)
                  .background(Color(red: 0, green: 0, blue: 0))
                  .frame(width: 448, height: 720, alignment: .bottomLeading)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 167, height: 270)
                    .background(
                Image("Current-Bar")
                    .resizable()
                  .frame(width: 65, height: 3)
                  .background(Color(red: 0.98, green: 0.82, blue: 0.58))
                  .frame(width: 380, height: 595, alignment: .bottomTrailing))
                
                Text("Menu")
                    .font(Font.custom("Allerta Stencil", size: 25))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(width: 245, height: 730, alignment: .top)
                
                Image("Ellipse 1")
                    .frame(width: 390, height: 390)
                    .background(Color(red: 0.14, green: 0.13, blue: 0.13))
                    .clipped()
                    .cornerRadius(200)
                    .frame(width: 245, height: 500, alignment: .top)
                
                Image("Ellipse 2")
                    .frame(width: 196, height: 196)
                    .background(Color(red: 0.07, green: 0.07, blue: 0.07))
                    .clipped()
                    .cornerRadius(196)
                    .frame(width: 245, height: 300, alignment: .top)
                
                Text("Settings")
                    .font(Font.custom("Allerta Stencil", size: 15))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.98, green: 0.82, blue: 0.58))
                    .frame(width: 100, height: 320)
                    .frame(width: 100, height: 640, alignment: .topLeading)
                
                Text("Audio")
                    .font(Font.custom("Allerta Stencil", size: 15))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.98, green: 0.82, blue: 0.58))
                    .frame(width: 100, height: 320)
                    .frame(width: 400, height: 370, alignment: .topLeading)
                
                Text("Terms and Service")
                    .font(Font.custom("Allerta Stencil", size: 15))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.98, green: 0.82, blue: 0.58))
                    .frame(width: 200, height: 320)
                    .frame(width: 200, height: 110, alignment: .topLeading)
                Text("History")
                    .font(Font.custom("Allerta Stencil", size: 15))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.98, green: 0.82, blue: 0.58))
                    .frame(width: 200, height: 320)
                    .frame(width: 480, height: 370, alignment: .topTrailing)
                
                VStack {
                    NavigationLink(destination: Settings()) {
                        Image("cog")
                            .font(.system(size: 1))
                            .foregroundColor(systemGold)
                            .frame(width: 55, height: 130)
                            
                    }
                    .frame(width: 55, height: 0, alignment: .bottomTrailing)
                    
                    NavigationLink(destination: Audio()) {
                        Image("volume-high")
                            .font(.system(size: 1))
                            .foregroundColor(systemGold)
                            .frame(width: 50, height: 130)
                            
                    }
                    .frame(width: 350, height: 250, alignment: .topLeading)
                }
                
                HStack {
                    NavigationLink(destination: TermsAndService()) {
                        Image("newspaper")
                            .font(.system(size: 1))
                            //.resizable()
                            .foregroundColor(systemGold)
                            .frame(width: 65, height: 100)
                            
                            
                    }
                    .frame(width: 70, height: 245, alignment: .bottomLeading)
                }
                
                HStack {
                    NavigationLink(destination: History()) {
                        Image("receipt")
                            .font(.system(size: 1))
                            .foregroundColor(systemGold)
                            .frame(width: 65, height: 100)
                        
                    }
                    .frame(width: 340, height: 220, alignment: .topTrailing)
                }
                
                HStack {
                    NavigationLink(destination: Support()) {
                        Image("person")
                            .foregroundColor(systemGold)
                            .font(.system(size: 120))
                            .frame(width: 110, height: 100)
                            .frame(width: 110, height: 110, alignment: .topTrailing)
                    }
                    .frame(width: 110, height: 5, alignment: .bottomTrailing)
                }
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 101, height: 1)
                    .background(Color(red: 0.98, green: 0.82, blue: 0.58))
                    .rotationEffect(.degrees(45), anchor: .topLeading)
                    .frame(width: 275, height: 390, alignment: .topLeading)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 101, height: 1)
                    .background(Color(red: 0.98, green: 0.82, blue: 0.58))
                    .rotationEffect(.degrees(135), anchor: .topLeading)
                    .frame(width: 135, height: 40, alignment: .bottomLeading)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 101, height: 1)
                    .background(Color(red: 0.98, green: 0.82, blue: 0.58))
                    .rotationEffect(.degrees(135), anchor: .topLeading)
                    .frame(width: 485, height: 390, alignment: .topTrailing)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 101, height: 1)
                    .background(Color(red: 0.98, green: 0.82, blue: 0.58))
                    .rotationEffect(.degrees(45), anchor: .topLeading)
                    .frame(width: 340, height: 40, alignment: .bottomTrailing)
                
                
                // Rectangles and rotation effects ...
            }
            .navigationBarHidden(false)// Hide default navigation bar
            .frame(width: 430, height: 932)
            .background(.black.opacity(0.75))
        }
    }
}


#Preview {
    Menu1()
}
