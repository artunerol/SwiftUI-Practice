//
//  CardView.swift
//  SwiftUI-Practice
//
//  Created by Artun Erol on 18.12.2023.
//

import SwiftUI

private enum HIKECardImageEnum: String, CaseIterable {
    case boyWithMap
    case boy2
    case boy3
    case girl1
    case girl2
}

struct HIKECardView: View {
    @State private var contentImage: HIKECardImageEnum = .boyWithMap
    
    private func getRandomImage() {
        contentImage = HIKECardImageEnum.allCases.randomElement() ?? .boyWithMap
    }
    
    var body: some View {
        ZStack {
            HIKECustomBackgroundView()
            
            // MARK: - Header
            
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(LinearGradient(colors: [Color.customGrayLight,
                                                                     Color.customGrayMedium],
                                                            startPoint: .top,
                                                            endPoint: .bottom))
                        
                        Spacer()
                        
                        Button {
                            print("Button pressed")
                        } label: {
                            HIKECustomButton()
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal, 16)
                
                // MARK: - Main Content
                
                ZStack {
                    HIKECustomCircleView()
                    
                    Image(contentImage.rawValue)
                        .imageModifier()
                }
                
                Button("Explore More") {
                    getRandomImage()
                }
                .modifier(GradientView(foregroundColors: [.customGreenLight,
                                                          .customGreenMedium],
                                       backgroundColors: [.customGrayLight,
                                                          .customGrayMedium]))
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
