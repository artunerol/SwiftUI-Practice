//
//  CardView.swift
//  SwiftUI-Practice
//
//  Created by Artun Erol on 18.12.2023.
//

import SwiftUI

struct HIKECardView: View {
    var body: some View {
        ZStack {
            HIKECustomBackgroundView()
            
            VStack {
                
                // MARK: - Header
                
                VStack(alignment: .leading) {
                    Text("Hiking")
                        .fontWeight(.black)
                        .font(.system(size: 52))
                        .foregroundStyle(LinearGradient(colors: [Color.customGrayLight,
                                                                 Color.customGrayMedium
                                                                ],
                                                        startPoint: .top,
                                                    endPoint: .bottom))
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .italic()
                        .foregroundColor(.customGrayMedium)
                        .padding(.trailing, 16)
                }
                .padding(.leading, 30)
                
                // MARK: - Main Content
                
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
        }
        .frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        HIKECardView()
    }
}
