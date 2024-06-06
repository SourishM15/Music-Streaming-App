//
//  SongView.swift
//  Music Streaming App
//
//  Created by 64018011 on 5/22/24.
//

import SwiftUI
struct SongView: View {
    let songs = SongList
        
        var body: some View {
            NavigationView {
                VStack {
                    List {
                        ForEach(songs, id: \.self) { song in
                            NavigationLink(destination: PlayerView( currentSongName: song)) {
                                HStack {
                                    Image(systemName: "music.note") // Use a music-related icon
                                        .foregroundColor(systemGold) // Apply custom color to the icon
                                    
                                    Text(song.songName) // Display the song name
                                        .foregroundColor(systemGold) // Apply custom color to the text
                                    Spacer()
                                }
                                .foregroundColor(systemGold)
                                .padding()
                                Spacer()
                                    .background(Color.black.opacity(0.1))
                                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                                // Padding for better spacing
                            }
                        }
                        .listRowBackground(Color.black.opacity(0.3))
                        
                    }
                    .scrollContentBackground(.hidden)
                    .background(Color.black.opacity(0.75))
                    .frame(height: 600)
                    .listStyle(SidebarListStyle())
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            Text("Songs")
                                .foregroundColor(systemGold) // Set title color to systemGold
                                .font(.system(size: 66))
                            
                            // Optional: set title font style
                        }
                    }
                    //Navigation title
                    .background(systemGold.opacity(0.1)) // Slight background color change for the list
                    .listStyle(InsetGroupedListStyle()) // List style for improved look and feel
                    .accentColor(systemGold)
                    
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
                      .frame(width: 70, height: 160, alignment: .topTrailing))
                }
                .frame(width: 448, height: 697, alignment: .bottomLeading)
            }
        }

            }



#Preview {

    SongView()


}
