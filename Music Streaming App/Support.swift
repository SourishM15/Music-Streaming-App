//
//  Support.swift
//  Music Streaming App
//
//  Created by 64018011 on 4/19/24.
//

import SwiftUI

struct Support: View {
    var body: some View {
        ZStack {
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 430, height: 60)
                .background(Color(red: 0.26, green: 0.17, blue: 0.02))
                .frame(width: 320, height: 759, alignment: .top)
            
            Text("Support")
                .font(Font.custom("Allerta Stencil", size: 25))
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .frame(width: 245, height: 730, alignment: .top)
            
            Image("person")
                .resizable()
              .frame(width: 107, height: 108)
              .frame(width: 150, height: 560, alignment: .top)
            
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
            
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 308, height: 58)
              .background(Color(red: 0.14, green: 0.13, blue: 0.13))
              .frame(width: 150, height: 260, alignment: .top)
            Text("Privacy")
              .font(Font.custom("Allerta Stencil", size: 20))
              .multilineTextAlignment(.center)
              .foregroundColor(Color(red: 0.98, green: 0.82, blue: 0.58))
              .frame(width: 273, height: 225, alignment: .top)
            Image("Polygon 2")
              .frame(width: 41, height: 25)
              .frame(width: 273, height: 225, alignment: .topLeading)
            
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 308, height: 58)
              .background(Color(red: 0.14, green: 0.13, blue: 0.13))
              .frame(width: 150, height: 60, alignment: .top)
            Image("Polygon 2")
              .frame(width: 41, height: 25)
              .frame(width: 273, height: 25, alignment: .topLeading)
            Text("Login Data")
              .font(Font.custom("Allerta Stencil", size: 20))
              .multilineTextAlignment(.center)
              .foregroundColor(Color(red: 0.98, green: 0.82, blue: 0.58))
              .frame(width: 273, height: 25, alignment: .top)
            
            
        }
        .frame(width: 430, height: 932)
        .background(.black.opacity(0.85))
    }
}

#Preview {
    Support()
}
