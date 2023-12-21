//
//  AsyncImage_Practice.swift
//  SwiftUI-Practice
//
//  Created by Artun Erol on 18.12.2023.
//

import SwiftUI

struct AsyncImage_Practice: View, MainView {
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
        setupLogger()
        return AsyncImage(url: URL(string: imageURL), transaction: Transaction(animation: .spring())) { phase in
            switch phase {
            case .success(let image):
                image
                    .imageModifier()
                    .transition(.move(edge: .bottom))
            case .failure(_):
            Image(systemName: "ant.circle.fill").iconPlaceHolderModifier()
            case .empty:
            Image(systemName: "photo.circle.fill").iconPlaceHolderModifier()
            @unknown default:
                ProgressView()
            }
        }
        .padding(40)
    }
}

struct AsyncImage_Practice_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImage_Practice()
    }
}
