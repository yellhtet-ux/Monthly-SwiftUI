//
//  RegisterHeaderPhoto.swift
//  Monthly-SwiftUI
//
//  Created by Andrew Hardin on 6/1/24.
//

import SwiftUI
import PhotosUI

struct RegisterHeaderPhoto: View {
    @State var headerName : String = ""
    @Binding var userSelectedImage : Image?
    
    var body: some View {
        Text(headerName)
            .font(.title)
            .foregroundColor(.black)
        

        if let image = userSelectedImage {
            image
                .resizable()
                .scaledToFill()
                .frame(width: 350, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .clipped()
        }   
    }
}

#Preview {
    RegisterHeaderPhoto(userSelectedImage: .constant(Image("register-thumbnail-icon")))
}
