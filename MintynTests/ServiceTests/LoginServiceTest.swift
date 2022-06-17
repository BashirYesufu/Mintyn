//
//  LoginServiceTest.swift
//  MintynTests
//
//  Created by Bash on 17/06/2022.
//

import XCTest
@testable import Mintyn

class LoginServiceTests: XCTestCase {
    
    func testValidLoginDetails() {
        
        let number = "2348123456789"
        let password = "123456"
        let test = XCTestExpectation()
        var result = false
        
        LoginService.shared.loginUser(number: number, password: password) { isLoggedIn in
            result = isLoggedIn
            test.fulfill()
        }
        
        wait(for: [test], timeout: 5)
        XCTAssertTrue(result)
    }
    
    func testInvalidLoginDetails() {
        
        let number = "+8123456789"
        let password = "123456"
        let test = XCTestExpectation()
        var result = false
        
        LoginService.shared.loginUser(number: number, password: password) { isLoggedIn in
            result = isLoggedIn
            test.fulfill()
        }
        
        wait(for: [test], timeout: 5)
        XCTAssertFalse(result)
    }
}
