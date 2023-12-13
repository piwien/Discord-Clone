//
//  AuthViewModel.swift
//  Discord-Clone
//
//  Created by Berkay Yaşar on 14.12.2023.
//

import SwiftUI

@Observable
final class AuthViewModel {
    var signInEmail = ""
    var signInPassword = ""
    
    var registerEmail = ""
    var registerPassword = ""
    var registerUsername = ""
    var registerDisplayName = ""
    var registerDate = Date.now
    
    func logIn() {
        
    }
    
    func createAccount() {
        
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
