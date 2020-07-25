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
                    Label("推荐", systemImage: "house")
                }
            }
            Divider()
            Group{
                Label("直播", systemImage: "video")
                Label("热门", systemImage: "flame")
                Label("追番", systemImage: "tv")
                Label("动态", systemImage: "plus")
                Label("分区", systemImage: "square.grid.2x2")
            }
            Divider()
            Group{
                Label("我的缓存", systemImage: "square.and.arrow.down")
                Label("观看历史", systemImage: "clock")
                Label("我的消息", systemImage: "message")
            }
            Divider()
            Group{
                Label("我的收藏", systemImage: "star")
                Label("稍后观看", systemImage: "clock.arrow.circlepath")
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
