//
//  RegisterViewModel.swift
//  Monthly-SwiftUI
//
//  Created by Andrew Hardin on 6/1/24.
//

import SwiftUI
import PhotosUI

@MainActor
class RegisterViewModel : ObservableObject {
    
    @Published var selectedImage : PhotosPickerItem? {
        didSet {
            Task {
                await setImage(image: selectedImage)
            }
        }
    }
    
    @Published var userChoosedImage:  Image?
    
    private func setImage (image: PhotosPickerItem?) async {
        guard let image = image else {return}
        guard let data = try? await image.loadTransferable(type: Data.self) else {return}
        guard let uiImage = UIImage(data: data) else {return}
        userChoosedImage = Image(uiImage: uiImage)
    }

    
}
