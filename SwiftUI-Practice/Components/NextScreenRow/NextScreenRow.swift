//
//  NextScreenRow.swift
//  SwiftUI-Practice
//
//  Created by Artun Erol on 18.12.2023.
//

import SwiftUI

struct NextScreenRow: View {
    var screenName: ScreenEnum
    
    var body: some View {
        HStack {
            switch screenName {
            case .test:
                Text("Test Screen")
            case .test2:
                Text("Test Screen 2")
            case .asyncImage:
                Text("Async Image Practice")
            }
            
            Spacer()
        }
    }
}

struct NextScreenRow_Previews: PreviewProvider {
    static var previews: some View {
        NextScreenRow(screenName: .test)
    }
}
