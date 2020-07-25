//
//  VideoView.swift
//  Bilibili
//
//  Created by Dylan X on 7/25/20.
//

import SwiftUI

struct VideoView: View {
    @ViewBuilder
    var body: some View {
        #if os(iOS)
        content
            .listStyle(InsetGroupedListStyle())
        #else
        content
            .frame(minWidth: 430, minHeight: 600, alignment: .center)
        #endif
    }
    var content: some View{
        List(0 ..< 20) { item in
            VideoRow()
        }
        .frame(width: 410.0)
        .navigationTitle("Video")
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
