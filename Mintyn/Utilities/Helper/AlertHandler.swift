//
//  AlertHandler.swift
//  Mintyn
//
//  Created by Bash on 17/06/2022.
//

import UIKit

struct AlertHandler {
    static var shared = AlertHandler()
    public init() {}
    
    func showErrorAlert(message: String) -> UIAlertController{
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        return alert
    }
}
