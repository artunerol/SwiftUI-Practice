//
//  MainView.swift
//  SwiftUI-Practice
//
//  Created by Artun Erol on 21.12.2023.
//

import Foundation

protocol MainView {
    func setupLogger()
}

extension MainView {
    func setupLogger() {
        Logger.shared.navigationInfo(self)
    }
}
