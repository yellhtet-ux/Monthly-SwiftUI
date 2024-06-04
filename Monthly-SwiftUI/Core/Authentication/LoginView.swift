//
//  LoginView.swift
//  Monthly-SwiftUI
//
//  Created by Andrew Hardin on 6/4/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            VStack(spacing: 20){
                    // Header 
                    VStack {
                        Text("Monthly")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(.appTitle)
                        
                        Text("Login To Your Account")
                            .font(.title2)
                            .foregroundColor(.uniCaption)
                    }
                    .padding()
                    
                    
                    // Email and Password 
                    
                    VStack(alignment: .leading,spacing: 10){
                        RegisterHeaderTextField(headerName: "Email", text: $email)
                        RegisterHeaderTextField(headerName: "Password", text: $password)
                    }
                    .padding(.horizontal)

                    
                    // Login button
                    Button { 
                        print ("Login")
                    } label: { 
                        Text("Login")
                            .modifier(AuthButtonModifier())
                    }  
                    
                    Spacer()
                    
                    NavigationLink { 
                        AddEmailView()
                            .navigationBarBackButtonHidden()
                    } label: { 
                        Text("Don't have an account? ") 
                        Text("Register")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.uniCaption)
                    
            }
        }
         
    }
}

#Preview {
    LoginView()
}
