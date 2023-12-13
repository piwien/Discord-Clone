//
//  EmailView.swift
//  Discord-Clone
//
//  Created by Berkay Yaşar on 14.12.2023.
//

import SwiftUI

struct EmailView: View {
    @Environment(\.authViewModel) var viewModel
    @Environment(\.dismiss) var dismiss

    var body: some View {
        @Bindable var viewModel = viewModel
        VStack(spacing: 12) {
            Text("Enter email")
                .font(.title)
                .bold()
                .padding(.leading)
                .padding(.bottom, 24)
            
            DiscordTextField(header: "Email", placeholder: "Email", cornerRadius: 4, shadow: 2, text: $viewModel.registerEmail)
                .padding(.horizontal)
            
            Text("View our Privacy Policy")
                .foregroundStyle(.blue)
                .padding(.leading)
                .font(.caption)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            NavigationLink{
                NameView()
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
            .disabled(viewModel.registerEmail.isEmpty)
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
    EmailView()
}
