//
//  AddEmailView.swift
//  Monthly-SwiftUI
//
//  Created by Andrew Hardin on 6/4/24.
//

import SwiftUI

struct AddEmailView: View {
    @Environment(\.dismiss) var dismiss
    @State private var email : String = ""
    var body: some View {
        VStack (spacing: 15) {
            VStack (spacing: 12) {
                Text("Add Your Email")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.appTitle)
                
                Text("Please use this email to sign in to your account")
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.uniCaption)
            }
            
            TextField("Email",text: $email)
                .modifier(AuthTextFieldModifier())
            
            NavigationLink { 
                AddUserNameView()
                    .navigationBarBackButtonHidden()
            } label: { 
                Text("Next")
                    .modifier(AuthButtonModifier())
            }
            
            Spacer()

        }
        .padding(.top,40)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()  
                    }
            }
        }
    }
}

#Preview {
    AddEmailView()
}
