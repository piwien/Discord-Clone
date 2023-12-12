//
//  SignInView.swift
//  Discord-Clone
//
//  Created by Berkay Yaşar on 13.12.2023.
//

import SwiftUI

struct SignInView: View {
    @Environment(\.authViewModel) var viewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        @Bindable var viewModel = viewModel
        VStack {
            Text("Welcome back!")
                .font(.title)
                .bold()
            
            Text("We're so excited to see you again")
                .font(.footnote)
                .foregroundStyle(.gray)
                .bold()
                .padding(.bottom, 32)
            
            
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Account Information")
                    .font(.footnote)
                    .padding(.horizontal)
                
                TextField("Email", text: $viewModel.signInEmail)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.never)
                    .bold()
                    .foregroundStyle(.gray)
                    .padding(10)
                    .background(Color(uiColor: .systemGray5))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                    .shadow(radius: 2)
                    .padding(.horizontal)
                
                
                SecureField("Password", text: $viewModel.signInPassword)
                    .bold()
                    .padding(10)
                    .background(Color(uiColor: .systemGray5))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                    .shadow(radius: 2)
                    .padding(.horizontal)
                
                Text("Forgot your password?")
                    .foregroundStyle(.blue)
                    .font(.caption)
                    .padding(.horizontal)
                
                Button(action: { viewModel.logIn() }, label: {
                    Text("Log In")
                        .foregroundStyle(.white)
                        .bold()
                        .padding(10)
                        .frame(maxWidth: .infinity)
                        .background(.discord)
                        .padding(.horizontal)
                })
                
            }
            Spacer()
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
    }
}

#Preview {
    SignInView()
}
