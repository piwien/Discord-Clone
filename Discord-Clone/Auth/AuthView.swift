//
//  AuthView.swift
//  Discord-Clone
//
//  Created by Berkay Yaşar on 13.12.2023.
//

import SwiftUI

struct AuthView: View {
    @State var viewModel = AuthViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack(alignment:. top) {
                Image("dc-auth-screen")
                    .resizable()
                    .scaledToFill()
                
                VStack {
                    Spacer()
                    
                    NavigationLink {
                        EmailView()
                            .environment(viewModel)
                    } label: {
                        Text("Register")
                            .padding(10)
                            .frame(maxWidth: .infinity)
                            .foregroundStyle(.white)
                            .background {
                                Color(.discord)
                            }
                            .padding(.horizontal)
                    }
                    
                    NavigationLink {
                        SignInView()
                            .environment(viewModel)
                    } label: {
                        Text("Login")
                            .padding(10)
                            .frame(maxWidth: .infinity)
                            .foregroundStyle(.white)
                            .background {
                                Color(.gray)
                            }
                            .padding(.bottom,50)
                            .padding(.horizontal)
                    }
                }
            }
            .ignoresSafeArea()
            .background(.white)
        }
        
    }
}

#Preview {
    AuthView()
}
