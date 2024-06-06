//
//  HomePage .swift
//  Music Streaming App
//
//  Created by 64018011 on 4/1/24.
//

import SwiftUI

struct HomePage_: View {
    var body: some View {
        HStack {
            TabView {
                ZStack {
                    //NavigationView {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 430, height: 70)
                        .background(Color(red: 0.26, green: 0.17, blue: 0.02))
                        .frame(width: 320, height: 739, alignment: .top)
                    
                    Text("Home")
                        .font(Font.custom("Allerta Stencil", size: 25))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width: 245, height: 680, alignment: .top)
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 167, height: 170)
                        .background(
                            Image("Logo")
                                .resizable()
                            //.aspectRatio(contentMode: .fill)
                                .frame(width: 127, height: 120)
                                .clipped()
                                .cornerRadius(200)
                                .frame(width: 159, height: 585, alignment: .top)
                        )
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 167, height: 270)
                        .background(
                    Image("Current-Bar")
                        .resizable()
                      .frame(width: 60, height: 7)
                      .background(Color(red: 0.98, green: 0.82, blue: 0.58))
                      .frame(width: 370, height: 690, alignment: .bottomLeading))
                      
                                          
                    /*
                     Button {
                     
                     } label: {
                     Image("Heart")
                     .resizable()
                     .frame(width: 30, height: 30)
                     .frame(width: 320, height: 759, alignment: .bottomLeading)
                     }
                     
                     Image("Heart")
                     .resizable()
                     .frame(width: 30, height: 30)
                     .frame(width: 320, height: 759, alignment: .bottomLeading)
                     
                     Image("Music-Icon")
                     .resizable()
                     .frame(width: 20, height: 30)
                     .frame(width: 120, height: 759, alignment: .bottomLeading)
                     
                     Image("Magnifying-Glass")
                     .resizable()
                     .frame(width: 30, height: 30)
                     .frame(width: 120, height: 759, alignment: .bottomTrailing)
                     
                     Image("Menu")
                     .resizable()
                     .frame(width: 30, height: 30)
                     .frame(width: 320, height: 759, alignment: .bottomTrailing)
                     */
                    
                    
                    
                    Image("Rectangle 16")
                        .frame(width: 409, height: 385)
                        .background(Color(red: 0.1, green: 0.09, blue: 0.09))
                        .frame(width: 320, height: 340, alignment: .top)
                    
                    Image("Vector 6")
                        .frame(width: 406, height: 244)
                        .overlay(
                            Rectangle()
                                .stroke(.white, lineWidth: 1)
                        )
                        .frame(width: 320, height: 170, alignment: .top)
                    Image("Vector 6")
                        .frame(width: 406, height: 84)
                        .overlay(
                            Rectangle()
                                .stroke(.white, lineWidth: 1)
                        )
                        .frame(width: 320, height: 40, alignment: .top)
                    
                    Image("Plus-Sign")
                        .frame(width: 105, height: 100).frame(width: 430, height: 665, alignment: .bottom)
                   
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 610, height: 35)
                      .background(Color(red: 0, green: 0, blue: 0))
                      .frame(width: 448, height: 752, alignment: .bottomLeading)
                    
                    
                    
                }
                .frame(width: 430, height: 932)
                .background(.black.opacity(0.75))
                //}
            }
        }
    }
}

#Preview {
    HomePage_()
}
