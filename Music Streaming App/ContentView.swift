//
//  ContentView.swift
//  Music Streaming App
//
//  Created by 64018011 on 3/25/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 26) {
                HStack(alignment: .center, spacing: 0) {
                NavigationLink(destination: Linkx()) { 
                    Rectangle()
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 274, height: 270)
                        .background(
                            Image("Logo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 274, height: 270)
                                .clipped()
                        )
                        .cornerRadius(131)
                    
                }
            }
            .padding(0)
            .frame(width: 274, height: 270, alignment: .center)
                Text("Ride Your Rhythm")
                    .font(Font.custom("Inter", size: 30))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.98, green: 0.82, blue: 0.58))
                    .frame(width: 248, height: 80, alignment: .center)
                
                
            }
            
            .padding(.horizontal, 78)
            .padding(.top, 275)
            .padding(.bottom, 281)
            .frame(width: 430, height: 932, alignment: .top)
            .background(.black.opacity(0.85))
             
            }
        }
    }

        struct ContentView_Previews:
            PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
