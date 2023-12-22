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
    case hikeProject
    case asyncImage
}

struct ScreenListView: View {
    private func getScreenEnumCaseArray() -> [ScreenEnum] {
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
            .scrollContentBackground(.hidden)
            .navigationTitle("Screens")
            .background(
                Image("adessoBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .padding(.top, 0)
                    .padding(.bottom, 0)
            )
        }
    }
}

struct ScreenList_Previews: PreviewProvider {
    static var previews: some View {
        ScreenListView()
    }
}
