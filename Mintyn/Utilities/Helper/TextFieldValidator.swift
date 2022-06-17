//
//  TextFieldValidator.swift
//  Mintyn
//
//  Created by Bash on 17/06/2022.
//

import Foundation

struct TextFieldValidator {
    
    static func validateNumber(_ number: String) -> Error? {
        if number.contains("234") && number.count == 13 {
            return nil
        }
        return TextFieldError.invalidNumber
    }
    
    static func validatePassword(_ password: String) -> Error? {
        return password.trimmingCharacters(in: .whitespacesAndNewlines).count >= 6 ? nil : TextFieldError.invalidPassword
    }
}
