//
//  AddSongView.swift
//  Music Streaming App
//
//  Created by 64018011 on 5/28/24.
//

import Foundation
import SwiftUI

struct AddSongView: View {
    @ObservedObject var playlistManager: PlaylistManager
    var playlist: Playlist

    var body: some View {
        List {
            ForEach(SongList, id: \.id) { song in
                Button(action: {
                    playlistManager.addSong(to: playlist, song: song)
                }) {
                    Text(song.songName)
                }
            }
        }
        .navigationTitle("Add Songs")
    }
}
