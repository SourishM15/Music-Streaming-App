//
//  AllSongs.swift
//  Music Streaming App
//
//  Created by 64018011 on 4/2/24.
//

import SwiftUI

struct AllSongs: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 430, height: 60)
                .background(Color(red: 0.26, green: 0.17, blue: 0.02))
                .frame(width: 320, height: 759, alignment: .top)
            
            Text("All Songs")
                .font(Font.custom("Allerta Stencil", size: 25))
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .frame(width: 245, height: 730, alignment: .top)
            /*
            Image("Return")
                .resizable()
                .frame(width: 65, height: 63)
                .frame(width: 380, height: 800, alignment: .topLeading)
            */
            Image("Plus-Sign")
                .resizable()
              .frame(width: 65, height: 63)
              .frame(width: 380, height: 640, alignment: .topLeading)
            
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 231, height: 31)
              .background(Color(red: 0.96, green: 0.87, blue: 0.87).opacity(0.2))
              .cornerRadius(11)
              .frame(width: 230, height: 600, alignment: .topLeading)
           
            Image("Search-Icon")
                .resizable()
              .frame(width: 20, height: 20)
              .frame(width: 190, height: 585, alignment: .topLeading)
            
            Text("Search Songs")
                .font(Font.custom("Inter", size: 11))
                .multilineTextAlignment(.trailing)
                .foregroundColor(Color(red: 0.59, green: 0.55, blue: 0.55))
                .frame(width: 135, height: 580, alignment: .topLeading)
             
            Image("Edit")
                .resizable()
                .frame(width: 65, height: 63)
                .frame(width: 380, height: 1330, alignment: .topTrailing)
            
                .foregroundColor(.clear)
                .frame(width: 437, height: 63)
                .background(.black.opacity(0.89))
                .frame(width: 430, height: 759, alignment: .bottom)
            
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 610, height: 0)
              .background(Color(red: 0, green: 0, blue: 0))
              .frame(width: 448, height: 758, alignment: .bottomLeading)
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 167, height: 270)
                .background(
            Image("Current-Bar")
                .resizable()
              .frame(width: 65, height: 3)
              .background(Color(red: 0.98, green: 0.82, blue: 0.58))
              .frame(width: 67, height: 635, alignment: .bottomLeading))
            
            
           /*
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 61, height: 7)
              .background(Color(red: 0.98, green: 0.82, blue: 0.58))
              .frame(width: 167, height: 758, alignment: .bottomLeading)
            
            Image("Heart")
            .resizable()
              .frame(width: 30, height: 30)
              .frame(width: 320, height: 740, alignment: .bottomLeading)
            
            Image("Music-Icon")
            .resizable()
              .frame(width: 20, height: 30)
              .frame(width: 120, height: 740, alignment: .bottomLeading)
            
            Image("Magnifying-Glass")
            .resizable()
              .frame(width: 30, height: 30)
              .frame(width: 120, height: 740, alignment: .bottomTrailing)
            
            Image("Menu")
            .resizable()
              .frame(width: 30, height: 30)
              .frame(width: 320, height: 740, alignment: .bottomTrailing)
            */
        }
        .frame(width: 430, height: 932)
        .background(.black.opacity(0.85))
        .overlay(
            Rectangle()
                .inset(by: 0.5)
                .stroke(.black, lineWidth: 1)
        )
    }
}

#Preview {
    AllSongs()
}
