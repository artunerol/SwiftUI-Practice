//
//  HIKE_Practice_Project.swift
//  SwiftUI-Practice
//
//  Created by Artun Erol on 18.12.2023.
//

import SwiftUI

struct HIKE_Practice_Project: View, MainView {
    var body: some View {
        setupLogger()
        return HIKECardView()
    }
}

struct HIKE_Practice_Project_Previews: PreviewProvider {
    static var previews: some View {
        HIKE_Practice_Project()
    }
}
