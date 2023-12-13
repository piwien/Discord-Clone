//
//  DiscordTextField.swift
//  Discord-Clone
//
//  Created by Berkay Yaşar on 14.12.2023.
//

import SwiftUI

struct DiscordTextField: View {
    var header: String
    var placeholder: String
    var cornerRadius: Int
    var shadow: Int
    @Binding var text: String
    var body: some View {
        
        Text(header)
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
        
        TextField(placeholder, text: $text)
            .autocorrectionDisabled()
            .textInputAutocapitalization(.never)
            .bold()
            .foregroundStyle(.gray)
            .padding(10)
            .background(Color(uiColor: .systemGray5))
            .clipShape(RoundedRectangle(cornerRadius: CGFloat(cornerRadius)))
            .shadow(radius: CGFloat(shadow))
    }
}

#Preview {
    DiscordTextField(header: "Lorem", placeholder: "Email", cornerRadius: 4, shadow: 2, text: .constant(""))
}
