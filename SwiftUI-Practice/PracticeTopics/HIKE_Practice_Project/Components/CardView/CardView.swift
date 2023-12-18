//
//  CardView.swift
//  SwiftUI-Practice
//
//  Created by Artun Erol on 18.12.2023.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            ZStack {
                Circle()
                    .fill(
                    LinearGradient(colors: [Color("ColorIndigoMedium"),
                                           Color("ColorSalmonLight")],
                                   startPoint: .topLeading,
                                   endPoint: UnitPoint.bottomTrailing))
                    .frame(width: 256, height: 256)
                
                Image("boyWithMap")
                    .imageModifier()
            }
        }
        .frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
