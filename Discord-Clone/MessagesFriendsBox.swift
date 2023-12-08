//
//  MessagesFriendsBox.swift
//  Discord-Clone
//
//  Created by Berkay Yaşar on 8.12.2023.
//

import SwiftUI

struct MessagesFriendsBox: View {
    var body: some View {
            ZStack {
                Rectangle()
                    .frame(width: 90, height: 90)
                    .clipShape(RoundedRectangle(cornerRadius: 18))
                    .foregroundStyle(.black)
                Circle()
                    .frame(width: 48, height: 48)
                    .foregroundStyle(.white)
                Circle()
                    .frame(width: 12, height: 12)
                    .position(CGPoint(x: 65, y: 62))
                    .foregroundStyle(.green)
            }
            .frame(width: 90, height: 90)
    }
}

#Preview {
    MessagesFriendsBox()
}
