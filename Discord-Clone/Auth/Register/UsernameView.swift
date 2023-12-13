//
//  UsernameView.swift
//  Discord-Clone
//
//  Created by Berkay Yaşar on 14.12.2023.
//

import SwiftUI

struct UsernameView: View {
    @Environment(\.authViewModel) var viewModel
    @Environment(\.dismiss) var dismiss

    var body: some View {
        @Bindable var viewModel = viewModel
        VStack(spacing: 12) {
            Text("Next, create an account")
                .font(.title)
                .bold()
                .padding(.leading)
                .padding(.bottom, 24)
            
            DiscordTextField(header: "Username", placeholder: "Username", cornerRadius: 4, shadow: 2, text: $viewModel.registerUsername)
                .padding(.horizontal)
            
            Text("Password")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .padding(.top, 10)
            
            SecureField("Password", text: $viewModel.registerPassword)
                .bold()
                .padding(10)
                .background(Color(uiColor: .systemGray5))
                .clipShape(RoundedRectangle(cornerRadius: 4))
                .shadow(radius: 2)
                .padding(.horizontal)
                .padding(.bottom)
            
            NavigationLink{
                AgeView()
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
            .disabled(viewModel.registerUsername.isEmpty || viewModel.registerPassword.isEmpty)
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
    UsernameView()
}
