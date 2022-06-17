//
//  TextFieldError.swift
//  Mintyn
//
//  Created by Bash on 17/06/2022.
//

import Foundation

enum TextFieldError: LocalizedError {
    case invalidNumber
    case invalidPassword
    
    var description: String {
        switch self {
        case .invalidNumber: return "Please enter a valid Nigerian phone number with country code"
        case .invalidPassword: return "Please enter a valid password. Password must be 6 characters or more"
        }
    }
}
