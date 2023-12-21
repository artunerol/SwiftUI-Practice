//
//  ViewModifiers.swift
//  SwiftUI-Practice
//
//  Created by Artun Erol on 21.12.2023.
//

import SwiftUI

/// Can be used of any view. Ex: Text, Button ect.
struct GradientView: ViewModifier {
    var foregroundColors: [Color]
    var backgroundColors: [Color]
    
    func body(content: Content) -> some View {
        content
            .fontWeight(.black)
            .shadow(color: .black.opacity(0.25),
                    radius: 1,
                    x: 1,
                    y: 2)
            .foregroundStyle(LinearGradient(colors: foregroundColors,
                                            startPoint: .top,
                                            endPoint: .bottom))
            .padding(.vertical)
            .padding(.horizontal, 16)
            .background(LinearGradient(colors: backgroundColors,
                                       startPoint: .top,
                                       endPoint: .bottom))
            .cornerRadius(40)
    }
}

struct MyModifier_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello, world!")
            .modifier(GradientView(foregroundColors: [.customGreenLight,
                                                      .customGreenMedium],
                                   backgroundColors: [.customGrayLight,
                                                      .customGrayMedium]))
    }
}
