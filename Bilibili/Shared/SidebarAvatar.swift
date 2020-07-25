//
//  SidebarAvatar.swift
//  Bilibili
//
//  Created by Dylan X on 7/25/20.
//

import SwiftUI

struct SidebarAvatar: View {
    var body: some View {
        VStack {
            Spacer()
            HStack(alignment: .top) {
                Image("Avatar-Dylan")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 48, height: 48)
                    .cornerRadius(24)
                VStack(alignment: .leading, spacing: 4.0) {
                    Text("This is Dylan")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .bold()
                    Text("HISHE / Toon Sandwich / TBBT  / Mayim Bialik")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    Text("Lv.5")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                }
                Spacer()
            }
            .frame(height: 60)
        }
        .frame(height: 80)
    }
}

struct SidebarAvatar_Previews: PreviewProvider {
    static var previews: some View {
        SidebarAvatar()
    }
}
