//
//  HIKECustomCircleView.swift
//  SwiftUI-Practice
//
//  Created by Artun Erol on 22.12.2023.
//

import SwiftUI

struct HIKECustomCircleView: View {
    @State private var isAnimate: Bool = false
    
    var body: some View {
        ZStack {
            HIKEBubleAnimation()
            
            Circle()
                .fill(
                    LinearGradient(colors: [.customIndigoMedium,
                                            .customGreenLight],
                                   startPoint: isAnimate ? .topLeading : .bottomLeading,
                                   endPoint: isAnimate ? .bottomTrailing : .topTrailing))
                .onAppear(perform: {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimate.toggle()
                    }
                })
                .frame(width: 256, height: 256)
        }
    }
}

struct HIKECustomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        HIKECustomCircleView()
    }
}
