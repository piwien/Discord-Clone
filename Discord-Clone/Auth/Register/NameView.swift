//
//  NameView.swift
//  Discord-Clone
//
//  Created by Berkay Yaşar on 14.12.2023.
//

import SwiftUI

struct NameView: View {
    @Environment(\.authViewModel) var viewModel
    @Environment(\.dismiss) var dismiss

    var body: some View {
        @Bindable var viewModel = viewModel
        VStack(spacing: 12) {
            Text("What's your name?")
                .font(.title)
                .bold()
                .padding(.leading)
                .padding(.bottom, 24)
            
            DiscordTextField(header: "Display Name", placeholder: "Name", cornerRadius: 4, shadow: 2, text: $viewModel.registerDisplayName)
                .padding(.horizontal)
            
            NavigationLink{
                UsernameView()
                    .environment(viewModel)
            } label: {
                Text("Next")
                    .foregroundStyle(.white)
                    .padding(10)
                    .frame(maxWidth: .infinity)
                    .background(Color.discord)
                    .clipShape(RoundedRectangle(cornerRadius: 4))
                    .padding(.horizontal)
                    
            }
            .disabled(viewModel.registerDisplayName.isEmpty)
        }
        .navigationBarBackButtonHidden()
        .toolbar{
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .foregroundStyle(.black)
                }
            }
        }
        Spacer()
    }
}

#Preview {
    NameView()
}
