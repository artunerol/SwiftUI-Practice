//
//  HIKEBubleAnimation.swift
//  SwiftUI-Practice
//
//  Created by Artun Erol on 22.12.2023.
//

import SwiftUI

struct HIKEBubleAnimation: View {
    @State private var randomBubbleCount = Int.random(in: 6...12)
    @State private var isAnimate: Bool = false
    
    private func randomCoordinate() -> CGFloat {
        CGFloat.random(in: 0...512)
    }
    
    private func randomSize() -> CGFloat {
        CGFloat.random(in: 4...86)
    }
    
    private func randomScale() -> CGFloat {
        CGFloat.random(in: 0.25...2.0)
    }
    
    private func randomSpeed() -> Double{
        Double.random(in: 0.05...1)
    }
    
    var body: some View {
        ZStack {
            ForEach(0..<12) { _ in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(x: randomCoordinate(),
                              y: randomCoordinate())
                    .scaleEffect(isAnimate ? randomScale() : 1)
                    .onAppear {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25,
                                                 damping: 0.25)
                            .repeatForever(autoreverses: true)
                            .speed(randomSpeed())
                        ) {
                            isAnimate.toggle()
                        }
                    }
            }
        }
    }
}

struct HIKEBubleAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.teal.ignoresSafeArea()
            
            HIKEBubleAnimation()
        }
    }
}
