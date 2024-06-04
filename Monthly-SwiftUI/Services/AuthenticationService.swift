//
//  AuthenticationService.swift
//  Monthly-SwiftUI
//
//  Created by Andrew Hardin on 6/4/24.
//

import Foundation
import FirebaseAuth

class AuthenticationService  {
    @Published var userSession : FirebaseAuth.User?
    
    static let shared = AuthenticationService()
    
    init () {
        userSession = Auth.auth().currentUser  
    }
    
    public func login (email: String, password: String) async throws {
        
    }
    
    public func register (email: String,password: String) async throws {
        let result = try await Auth.auth().createUser(withEmail: email, password: password)
        print("Email: \(String(describing: result.user.email))")
        self.userSession = result.user
    }
    
    public func signOut () {
        
    }
}
