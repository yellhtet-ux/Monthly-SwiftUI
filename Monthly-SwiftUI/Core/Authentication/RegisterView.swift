//
//  RegisterView.swift
//  Monthly-SwiftUI
//
//  Created by Andrew Hardin on 5/31/24.
//

import SwiftUI

struct RegisterView: View {
    
    @State var photoPickerPresented = false
    @State var name : String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var phone : String = ""
    
    @StateObject private var viewModel = RegisterViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView (showsIndicators: false) {
                VStack(alignment: .leading,spacing: 10) {

                    // Register process related components
                    VStack(alignment: .leading,spacing: 10) {
                        RegisterHeaderTextField(headerName: "Name",text: $name)
                        RegisterHeaderTextField(headerName: "Email Address",text: $email)
                        RegisterHeaderSecureField(headerName: "Password",secureText: $password)
                        RegisterHeaderTextField(headerName: "Phone", text: $phone)
                            .keyboardType(.numberPad)
                        RegisterHeaderPhoto(headerName: "Photo",userSelectedImage: $viewModel.userChoosedImage)
                    }
                    
                    // Register button
                    Button(action: {
                        print("Register button got pressed")
                    }, label: {
                        Text("Register")
                            .font(.title2)
                            .foregroundColor(.black)
                    })
                    .frame(minWidth: 350, minHeight: 42)
                    .background(Color.orange)
                    .padding(.top,20)
                    
                    Spacer()
                }
                .onAppear {
                    photoPickerPresented.toggle()
                }
                .photosPicker(isPresented: $photoPickerPresented, selection: $viewModel.selectedImage)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("Account Register")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.primary)
                    }
                }
            }
        }
    }
}

#Preview {
    RegisterView()
}
