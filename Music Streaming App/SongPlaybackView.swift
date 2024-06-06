//
//  SongPlaybackView.swift
//  Music Streaming App
//
//  Created by 64018011 on 5/28/24.
//

import Foundation
import SwiftUI
import UIKit
struct SongPlaybackView: View {
    @ObservedObject var playlistManager: PlaylistManager
    @State var currentPlaylist: Playlist
    @State private var currentIndex = 0

    var body: some View {
        VStack {
            if currentIndex < currentPlaylist.songs.count {
                let currentSong = currentPlaylist.songs[currentIndex]
                
                WebView(url: URL(string: currentSong.youtubeLink)!)
                    .frame(height: 300)
                
                Text(currentSong.songName)
                    .font(.title)
                    .padding()
                
                HStack {
                    Button(action: {
                        skipBackward()
                    }) {
                        Image(systemName: "backward.fill")
                            .padding()
                    }
                    .disabled(currentIndex == 0)

                    Button(action: {
                        skipForward()
                    }) {
                        Image(systemName: "forward.fill")
                            .padding()
                    }
                    .disabled(currentIndex == currentPlaylist.songs.count - 1)
                }
                .padding()
            } else {
                Text("No songs available.")
            }
        }
        .onAppear {
            playNextSong()
        }
    }

    private func skipForward() {
        if currentIndex < currentPlaylist.songs.count - 1 {
            currentIndex += 1
            playNextSong()
        }
    }

    private func skipBackward() {
        if currentIndex > 0 {
            currentIndex -= 1
            playNextSong()
        }
    }

    private func playNextSong() {
        if currentIndex < currentPlaylist.songs.count {
            // This will trigger WebView to update
            if let url = URL(string: currentPlaylist.songs[currentIndex].youtubeLink) {
                // Implement logic if needed
            }
        }
    }
}
