//
//  VideoRow.swift
//  Bilibili
//
//  Created by Dylan X on 7/25/20.
//

import SwiftUI

struct VideoRow: View {
    var body: some View {
        HStack(alignment: .top) {
            Image("VCover-2")
                .resizable()
                .frame(width: 144.0, height: 90)
                .aspectRatio(contentMode: .fill)
            VStack(alignment: .leading, spacing: 4.0) {
                Text("WWDC 2020: 展望｜iOS 14, iPadOS 14 以及更多")
                    .font(.subheadline)
                    .bold()
                Text("本视频内容纯属虚构, 不代表未来 Apple 的发展路线或是意味着 Apple 在 WWDC 2020 中会发布视频中的任何功能。 一切只是吹吹水, 开开脑洞, 不代表 Apple 观点。")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                Spacer()
                HStack(alignment: .bottom){
                    HStack {
                        Image(systemName: "eye")
                        Text("3702")
                    }
                    Spacer()
                    HStack {
                        Image(systemName: "text.bubble")
                        Text("3702")
                    }
                    Spacer()
                    HStack {
                        Image(systemName: "clock")
                        Text("5-4")
                    }
                }
                .font(.footnote)
            }
            Spacer()
        }
        .padding(.vertical, 5.0)
        .frame(width: 400.0, height: 100)
    }
}
struct VideoRow_Previews: PreviewProvider {
    static var previews: some View {
        VideoRow()
    }
}
