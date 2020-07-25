//
//  Sidebar.swift
//  Bilibili
//
//  Created by Dylan X on 7/25/20.
//

import SwiftUI

struct Sidebar: View {
    var body: some View {
        NavigationView {
            #if os(iOS)
            content
                .navigationTitle("This Is Dylan")
            #else
            content
                .frame(minWidth: 200, idealWidth: 250, maxWidth: 300)
            #endif
            VideoView()
        }
    }
    var content: some View{
        List {
            SidebarAvatar()
            Group{
                NavigationLink(destination: VideoView()) {
                    Label("Home", systemImage: "house")
                }
            }
            Divider()
            Group{
                Label("Live", systemImage: "video")
                Label("Trending", systemImage: "flame")
                Label("Anime", systemImage: "tv")
                Label("Activity", systemImage: "plus")
                Label("Category", systemImage: "square.grid.2x2")
            }
            Divider()
            Group{
                Label("Download", systemImage: "square.and.arrow.down")
                Label("Hostory", systemImage: "clock")
                Label("Message", systemImage: "message")
            }
            Divider()
            Group{
                Label("Save", systemImage: "star")
            }
        }
        .listStyle(SidebarListStyle())
        
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
