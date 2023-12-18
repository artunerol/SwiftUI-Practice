//
//  ScreenList.swift
//  SwiftUI-Practice
//
//  Created by Artun Erol on 18.12.2023.
//

import SwiftUI

enum ScreenEnum: CaseIterable, Identifiable {
    var id: Self {
        return self
    }
    
    case test
    case test2
    case asyncImage
}

struct ScreenListView: View {
    func getScreenEnumCaseArray() -> [ScreenEnum] {
        var screenEnumArray: [ScreenEnum] = []
        ScreenEnum.allCases.forEach { screenEnum in
            screenEnumArray.append(screenEnum)
        }
        return screenEnumArray
    }
    
    var body: some View {
        NavigationView {
            List(getScreenEnumCaseArray()) { screenEnum in
                NavigationLink {
                    GenericScreen(screenToShow: screenEnum)
                } label: {
                    NextScreenRow(screenName: screenEnum)
                }
            }
            .navigationTitle("Screens")
        }
    }
}

struct ScreenList_Previews: PreviewProvider {
    static var previews: some View {
        ScreenListView()
    }
}
