//
//  Linkx.swift
//  Music Streaming App
//
//  Created by 64018011 on 4/11/24.
//

import SwiftUI

struct Linkx: View {
    var body: some View {
        TabView {
            HomePage_()
                .tabItem {
                    Image(systemName: "house.fill")
                    //Text("Home")
                
                }
            PlaylistView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    //Text("Playlists")
                
                }
                    SongView()
                        .tabItem {
                            Image(systemName: "music.note").background(.black)
                            //Text("Songs")
                         
                        }
                  
            Search()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    //Text("Search")
                }
            
                Menu1()
                    .tabItem {
                        Image(systemName: "line.3.horizontal")
                        //Text("Menu")
                        
                    }
        }
        .accentColor(Color(red: 0.98, green: 0.82, blue: 0.58))
    }
}

#Preview {
    Linkx()
}
