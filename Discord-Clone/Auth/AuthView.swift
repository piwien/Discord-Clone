//
//  AuthView.swift
//  Discord-Clone
//
//  Created by Berkay Yaşar on 13.12.2023.
//

import SwiftUI

@Observable
final class AuthViewModel {
    var signInEmail = ""
    var signInPassword = ""
    
    func logIn() {
        
    }
}

extension EnvironmentValues {
    var authViewModel: AuthViewModel {
        get { self[AuthViewModelKey.self]}
        set { self[AuthViewModelKey.self] = newValue }
    }
}

private struct AuthViewModelKey: EnvironmentKey {
    static var defaultValue: AuthViewModel = AuthViewModel()
}

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
