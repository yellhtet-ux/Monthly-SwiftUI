//
//  AuthButtonModifier.swift
//  Monthly-SwiftUI
//
//  Created by Andrew Hardin on 6/4/24.
//

import SwiftUI  


struct AuthButtonModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .foregroundColor(.uniButton)
            .frame(minWidth: 350, minHeight: 42)
            .background(Color.orange)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.top,20)
            
    }
}
