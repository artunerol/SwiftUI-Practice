//
//  GenericScreen.swift
//  SwiftUI-Practice
//
//  Created by Artun Erol on 18.12.2023.
//

import SwiftUI

struct GenericScreen: View {
    var screenToShow: ScreenEnum
    
    var body: some View {
        switch screenToShow {
        case .test:
            Text("This is my TestScreen")
        case .hikeProject:
            HIKE_Practice_Project()
        case .asyncImage:
            AsyncImage_Practice()
        }
    }
}

struct GenericScreen_Previews: PreviewProvider {
    static var previews: some View {
        GenericScreen(screenToShow: .test)
    }
}
