//
//  RegisterHeaderTextField.swift
//  Monthly-SwiftUI
//
//  Created by Andrew Hardin on 6/1/24.
//

import SwiftUI

struct RegisterHeaderTextField: View {
    @State var headerName : String  = ""
    @Binding var text: String 
    var body: some View {
        Text(headerName)
            .font(.title3)
            .foregroundColor(.uniTextfieldHeader)
        
        TextField("", text: $text)
            .padding()
            .frame(width: 350, height: 40)
            .textInputAutocapitalization(.none)
            .background(Color.uniTextfield)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    RegisterHeaderTextField(text: .constant(""))
}
