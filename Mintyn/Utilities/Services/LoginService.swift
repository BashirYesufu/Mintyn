//
//  LoginService.swift
//  Mintyn
//
//  Created by Bash on 17/06/2022.
//

import Foundation

struct LoginService {
    
    static var shared = LoginService()
    private init() {}
    
    func loginUser(number: String, password: String, completion: @escaping(Bool) -> Void) {
        
//        MARK :- This executes the call off the main thread
        DispatchQueue.global().async {
            
            //This simulates a network call and awaits for 3 seconds to display a loader
            sleep(3)
            
            // Updates the UI on the main thread
            DispatchQueue.main.async {
                if (number.count == 11 && number.contains("+234")) && password.count >= 6 {
                    completion(true)
                } else {
                    completion(false)
                }
            }
        }
    }
}
