//
//  AddPasswordView.swift
//  Monthly-SwiftUI
//
//  Created by Andrew Hardin on 6/4/24.
//

import SwiftUI

struct AddPasswordView: View {
    @Environment(\.dismiss) var dismiss
    @State private var password = ""
    
    var body: some View {
        VStack (spacing: 15) {
            VStack (spacing: 12) {
                Text("Create a password")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.appTitle)
                
                Text("Your password must be at least 6 characters in length")
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.uniCaption)
            }
            
            TextField("Password",text: $password)
                .modifier(AuthTextFieldModifier())
            
            NavigationLink { 
                /// Destination
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
    AddPasswordView()
}
