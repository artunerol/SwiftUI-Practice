//
//  Image+Modifier.swift
//  SwiftUI-Practice
//
//  Created by Artun Erol on 18.12.2023.
//

import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconPlaceHolderModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
            .frame(maxWidth: 128)
            .foregroundColor(Color.purple)
            .opacity(0.5)
    }
}
