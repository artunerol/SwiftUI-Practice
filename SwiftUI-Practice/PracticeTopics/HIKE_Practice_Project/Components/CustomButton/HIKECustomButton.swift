//
//  HIKECustomButton.swift
//  SwiftUI-Practice
//
//  Created by Artun Erol on 21.12.2023.
//

import SwiftUI

struct HIKECustomButton: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(LinearGradient(colors: [.customGreenLight,
                                                         .customGreenLight],
                                                startPoint: .top,
                                                endPoint: .bottom))
            
            Circle()
                .stroke(LinearGradient(colors: [.customGrayLight,
                                                .customGrayMedium],
                                       startPoint: .top,
                                       endPoint: .bottom),
                        lineWidth: 4)
            
                .frame(width: 58, height: 58)
            
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(LinearGradient(colors: [.customGrayLight,
                                                         .customGrayMedium
                                                        ],
                                                startPoint: .top,
                                                endPoint: .bottom))
        }
        .frame(width: 58, height: 58)
    }
}

struct HIKECustomButton_Previews: PreviewProvider {
    static var previews: some View {
        HIKECustomButton()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
