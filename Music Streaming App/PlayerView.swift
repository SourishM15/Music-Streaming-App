//
//  PlayerView.swift
//  Music Streaming App
//
//  Created by 64018011 on 4/2/24.
//

import SwiftUI

struct PlayerView: View {
    @Environment(\.openURL) var openURL
    @State private var isPlaying = false
    
    // Parameter to accept the song name from `SongView`
    var currentSongName: Song
    
    var body: some View {
        ScrollView {
            ZStack {
                Color.black
                VStack {
                    HStack {
                        Text(currentSongName.songName) // Display the passed song name
                            .font(Font.custom("Allerta Stencil", size: 20))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .frame(width: 316, height: 64, alignment: .top)
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 350, height: 300)
                            .background(Color(red: 0.26, green: 0.17, blue: 0.02))
                            .cornerRadius(61)
                    }
                    Text("ARTIST NAME")
                        .font(Font.custom("Allerta Stencil", size: 20))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width: 192, height: 30, alignment: .bottom)
                        .padding()
                    
                    Button(action: {
                        isPlaying.toggle()
                        if isPlaying {
                            openURL(URL(string: currentSongName.youtubeLink)!)
                        }
                    }) {
                        Image(systemName: isPlaying ? "pause" : "play.fill")
                            .resizable()
                            .foregroundColor(Color(hue: 0.113, saturation: 0.956, brightness: 0.707))
                            .frame(width: 100, height: 100)
                    }
                    .frame(alignment: .bottom)
                    .padding()
                }
                .frame(width: 430, height: 932)
                .background(.black.opacity(0.25))
                .padding()

                
            }
        }
    }
}
