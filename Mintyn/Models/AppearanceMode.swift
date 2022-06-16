//
//  Appearance Mode.swift
//  Mintyn
//
//  Created by Bash on 16/06/2022.
//

import UIKit

enum AppearanceMode: String {
    case defaultMode = "Default"
    case darkMode = "Dark Mode"
    case lightMode = "Light Mode"
   
    
    var mode: UIUserInterfaceStyle {
        switch self {
        case .defaultMode:
            return .unspecified
        case .darkMode:
            return .dark
        case .lightMode:
            return .light
        }
        
    }
}
