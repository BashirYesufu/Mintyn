//
//  ViewController.swift
//  Mintyn
//
//  Created by Bash on 15/06/2022.
//

import UIKit
import NKVPhonePicker

class LoginViewController: UIViewController {


    @IBOutlet weak var numberTF: NKVPhonePickerTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        numberTF.country = Country(countryCode: "NG", phoneExtension: "+234")
    }


}

