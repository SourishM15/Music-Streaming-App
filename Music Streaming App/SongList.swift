//
//  SongList.swift
//  Music Streaming App
//
//  Created by 64018011 on 5/22/24.
//

import SwiftUI

// Song struct conforming to Identifiable, Codable, and Hashable
struct Song: Identifiable, Codable, Hashable {
    var id: UUID
    var songName: String
    var youtubeLink: String
    var songLength: Int

    init(songName: String, youtubeLink: String = "https://www.youtube.com") {
        self.id = UUID()
        self.songName = songName
        self.youtubeLink = youtubeLink
        self.songLength = 0
    }
}

// List of sample songs
let SongList: [Song] = [
    
    Song(songName: "Skibidi Bop", youtubeLink: "https://music.youtube.com/watch?v=G23pr_j_2QQ"),
    Song(songName: "Cher Cheri Lady", youtubeLink: "https://music.youtube.com/watch?v=eNvUS-6PTbs"),
    Song(songName: "Blinding Lights", youtubeLink: "https://music.youtube.com/watch?v=J7p4bzqLvCw")
]

// Playlist struct conforming to Identifiable and Codable
struct Playlist: Identifiable, Codable {
    var id = UUID()
    var name: String
    var songs: [Song]
}

// PlaylistManager class to handle playlists


class PlaylistManager: ObservableObject {
    @Published var playlists: [Playlist] = [] {
        didSet {
            savePlaylists()
        }
    }
    
    private let userDefaultsKey = "Playlists"

    init() {
        loadPlaylists()
    }

    func savePlaylists() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(playlists) {
            UserDefaults.standard.set(encoded, forKey: userDefaultsKey)
        }
    }

    func loadPlaylists() {
        let decoder = JSONDecoder()
        if let data = UserDefaults.standard.data(forKey: userDefaultsKey),
           let decoded = try? decoder.decode([Playlist].self, from: data) {
            playlists = decoded
        }
    }

    func addPlaylist(name: String) {
        playlists.append(Playlist(name: name, songs: []))
    }

    func deletePlaylist(at offsets: IndexSet) {
        playlists.remove(atOffsets: offsets)
    }

    func addSong(to playlist: Playlist, song: Song) {
        if let index = playlists.firstIndex(where: { $0.id == playlist.id }) {
            if !playlists[index].songs.contains(song) {
                playlists[index].songs.append(song)
            }
        }
    }

    func removeSong(from playlist: Playlist, at offsets: IndexSet) {
        if let index = playlists.firstIndex(where: { $0.id == playlist.id }) {
            playlists[index].songs.remove(atOffsets: offsets)
        }
    }

    func updatePlaylistName(_ playlist: Playlist, newName: String) {
        if let index = playlists.firstIndex(where: { $0.id == playlist.id }) {
            playlists[index].name = newName
        }
    }
}
