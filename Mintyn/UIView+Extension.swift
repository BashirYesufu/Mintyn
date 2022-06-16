//
//  UIView+Extension.swift
//  Mintyn
//
//  Created by Bash on 16/06/2022.
//

import UIKit

extension UIView {
   @IBInspectable var cornerRadius: CGFloat {
       get { return self.cornerRadius}
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
