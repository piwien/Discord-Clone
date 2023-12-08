//
//  RectangleMessagesView.swift
//  Discord-Clone
//
//  Created by Berkay Yaşar on 8.12.2023.
//

import SwiftUI

struct RectangleMessagesView: View {
    var body: some View {
        HStack(alignment: .top){
            Circle()
                .frame(width: 56, height: 56)
            VStack(alignment: .leading){
                Spacer()
                Text("Piwien")
                    .fontWeight(.semibold)
                Text("Are you available??")
                    .font(.footnote)
                Spacer()
            }
            .foregroundStyle(.white)
            Spacer()
            Text("1w")
                .font(.footnote)
                .foregroundStyle(.white)
        }
        .padding(.horizontal)
    }
}

#Preview {
    RectangleMessagesView()
}
