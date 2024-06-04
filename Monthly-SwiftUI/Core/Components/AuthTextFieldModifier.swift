//
//  AuthTextFieldModifier.swift
//  Monthly-SwiftUI
//
//  Created by Andrew Hardin on 6/4/24.
//

import SwiftUI

struct AuthTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .font(.headline)
            .textInputAutocapitalization(.none)
            .frame(width: 350, height: 40)
            .background(Color.uniTextfield)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }  
}


