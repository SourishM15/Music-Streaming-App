//
//  Settings.swift
//  Music Streaming App
//
//  Created by 64018011 on 4/11/24.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        ZStack {
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 430, height: 60)
                .background(Color(red: 0.26, green: 0.17, blue: 0.02))
                .frame(width: 320, height: 759, alignment: .top)
            
            Text("Settings")
                .font(Font.custom("Allerta Stencil", size: 25))
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .frame(width: 245, height: 730, alignment: .top)
            
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 610, height: 65)
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
              .frame(width: 380, height: 590, alignment: .bottomTrailing))
            
            Image("cog")
                .resizable()
              .frame(width: 107, height: 108)
              .frame(width: 150, height: 560, alignment: .top)
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 308, height: 58)
              .background(Color(red: 0.14, green: 0.13, blue: 0.13))
              .frame(width: 150, height: 260, alignment: .top)
            Text("Playlist Settings")
              .font(Font.custom("Allerta Stencil", size: 20))
              .multilineTextAlignment(.center)
              .foregroundColor(Color(red: 0.98, green: 0.82, blue: 0.58))
              .frame(width: 273, height: 225, alignment: .top)
            Image("Polygon 2")
              .frame(width: 41, height: 25)
              //.background(Color(red: 0.98, green: 0.82, blue: 0.58).opacity(0.85))
              //.rotationEffect(Angle(degrees: 179.81))
              .frame(width: 273, height: 225, alignment: .topLeading)
        }
        .frame(width: 430, height: 932)
        .background(.black.opacity(0.85))
    }
}

#Preview {
    Settings()
}
