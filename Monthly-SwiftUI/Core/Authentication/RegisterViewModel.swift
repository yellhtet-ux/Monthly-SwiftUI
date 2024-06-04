//
//  RegisterViewModel.swift
//  Monthly-SwiftUI
//
//  Created by Andrew Hardin on 6/1/24.
//

import SwiftUI
import PhotosUI
import Combine  

@MainActor
class RegisterViewModel : ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    
    @Published var userChoosedImage:  Image?

    private let service = AuthenticationService.shared

    @Published var selectedImage : PhotosPickerItem? {
        didSet {
            Task {
                await setImage(image: selectedImage)
            }
        }
    }
    
    private func setImage (image: PhotosPickerItem?) async {
        guard let image = image else {return}
        guard let data = try? await image.loadTransferable(type: Data.self) else {return}
        guard let uiImage = UIImage(data: data) else {return}
        userChoosedImage = Image(uiImage: uiImage)
    }
    

    func registerUser () async throws {
        try await service.register(email: email, password: password)
    }   
}
