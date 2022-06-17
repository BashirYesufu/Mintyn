//
//  TextFieldValidatorTests.swift
//  MintynTests
//
//  Created by Bash on 17/06/2022.
//

import XCTest
@testable import Mintyn

class TextFieldValidatorTests: XCTestCase {
    
    func testVaildNumber() {
        let number = "2348123456789"
        XCTAssertNil(TextFieldValidator.validateNumber(number))
    }
    
    func testInvalidNumber() {
        let number = "448123456789"
        let error = TextFieldValidator.validateNumber(number)
        XCTAssertEqual(error?.localizedDescription, TextFieldError.invalidNumber.localizedDescription)
    }
    
    func testValidPassword() {
        let password = "8123456789"
        XCTAssertNil(TextFieldValidator.validatePassword(password))
    }
    
    func testInvalidPassword() {
        let password = "12345"
        let error = TextFieldValidator.validatePassword(password)
        XCTAssertEqual(error?.localizedDescription, TextFieldError.invalidPassword.localizedDescription)
    }
}
