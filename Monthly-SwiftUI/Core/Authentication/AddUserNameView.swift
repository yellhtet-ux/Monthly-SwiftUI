//
//  AddUserNameView.swift
//  Monthly-SwiftUI
//
//  Created by Andrew Hardin on 6/4/24.
//

import SwiftUI

struct AddUserNameView: View {
    @Environment(\.dismiss) var dismiss
    @State private var userName = ""
    var body: some View {
        VStack (spacing: 15) {
            
            VStack (spacing: 12) {
                Text("Create username")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.appTitle)

                Text("Pick a username for your new account. You can always change it later.")
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.uniCaption)
            }
            
            TextField("Username",text: $userName)
                .modifier(AuthTextFieldModifier())
            
            
            NavigationLink { 
                AddPasswordView()
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
    AddUserNameView()
}
