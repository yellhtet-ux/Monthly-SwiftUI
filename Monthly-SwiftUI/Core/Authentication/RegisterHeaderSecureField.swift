//
//  RegisterHeaderSecureField.swift
//  Monthly-SwiftUI
//
//  Created by Andrew Hardin on 6/1/24.
//

import SwiftUI

struct RegisterHeaderSecureField: View {
    @State var headerName : String = ""
    @Binding var secureText: String
    var body: some View {
        Text(headerName)
            .font(.title)
            .foregroundColor(.black)
        
        SecureField("", text: $secureText)
            .padding()
            .frame(width: 350, height: 40)
            .background(Color.gray.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    RegisterHeaderSecureField(secureText: .constant(""))
}
