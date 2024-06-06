//
//  PlaylistView.swift
//  Music Streaming App
//
//  Created by 64018011 on 5/22/24.
//

import SwiftUI


struct PlaylistView: View {
    @ObservedObject var playlistManager = PlaylistManager() // Persistent playlist manager
    @State private var newPlaylistName = "" // State for new playlist name
    
    var body: some View {
        NavigationView {
            VStack {
                // Text field for adding new playlists
                TextField("New Playlist", text: $newPlaylistName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .border(systemGold)
                    .frame(width: 380, height: 80)
                
                // Button to add new playlist
                Button("Add Playlist") {
                    playlistManager.addPlaylist(name: newPlaylistName)
                    newPlaylistName = "" // Clear text field after adding
                }
                .padding()
                .background(systemGold) // Use custom color
                .foregroundColor(.black)
                .cornerRadius(10)
                
                // List of existing playlists
                List {
                    ForEach($playlistManager.playlists) { $playlist in
                        NavigationLink(
                            destination: PlaylistDetailView(
                                playlistManager: playlistManager,
                                playlist: $playlist
                            )
                        ) {
                            Image(systemName: "square.split.diagonal.2x2.fill") // Use a music-related icon
                                .foregroundColor(systemGold) // Apply custom color to the icon
                            
                            Text(playlist.name) // Display the song name
                                .foregroundColor(systemGold) // Display the playlist name
                        }
                    }
                    .onDelete { offsets in
                        playlistManager.deletePlaylist(at: offsets) // Delete playlist
                    }
                }
                .navigationTitle("Playlists")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        EditButton() // Enable list editing (for delete)
                    }
                }
                .frame(width: 380, height: 330)

                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 610, height: 70)
                    .background(Color.black)
                    .frame(width: 448, height: 60, alignment: .bottomLeading)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 167, height: 0)
                    .background(
                        Image("Current-Bar")
                            .resizable()
                            .frame(width: 65, height: 3)
                            .background(Color(red: 0.98, green: 0.82, blue: 0.58))
                            .frame(width: 220, height: 160, alignment: .topLeading))
                
            }
            .frame(width: 448, height: 697, alignment: .bottomLeading)
            .padding()
            .scrollContentBackground(.hidden)
            .background(Color.black.opacity(0.75))
            
        }
        
    }
}




#Preview {
    PlaylistView()
}
