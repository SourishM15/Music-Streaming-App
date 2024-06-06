//
//  PlaylistDetailView.swift
//  Music Streaming App
//
//  Created by 64018011 on 5/22/24.
//

import SwiftUI

struct PlaylistDetailView: View {
    @ObservedObject var playlistManager: PlaylistManager
    @Binding var playlist: Playlist
    @State private var selectedSong: Song? = nil

    var body: some View {
        VStack {
            List {
                ForEach(playlist.songs) { song in
                    Text(song.songName)
                }
                .onDelete { offsets in
                    playlistManager.removeSong(from: playlist, at: offsets)
                }
            }
            
            Picker("Select Song", selection: $selectedSong) {
                Text("Choose a song").tag(Song?.none)
                ForEach(SongList) { song in
                    Text(song.songName).tag(Song?.some(song))
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding()

            Button("Add Song") {
                if let song = selectedSong, !playlist.songs.contains(song) {
                    playlistManager.addSong(to: playlist, song: song)
                    selectedSong = nil
                }
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding()
            
            NavigationLink(destination: SongPlaybackView(playlistManager: playlistManager, currentPlaylist: playlist)) {
                Text("Play All")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
        .navigationTitle(playlist.name)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                EditButton()
            }
        }
    }
}

