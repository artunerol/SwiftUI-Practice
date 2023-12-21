//
//  Logger.swift
//  SwiftUI-Practice
//
//  Created by Artun Erol on 21.12.2023.
//

import SwiftUI

class Logger {
    static let shared = Logger()
    
    func navigationInfo(_ mainView: MainView) {
        print("🚗🚗🚗🚗🚗🚗 \nNavigated to view called: ➡️ \(String(describing: mainView.self).prefix(while: {$0 != "("}))")
    }
}
