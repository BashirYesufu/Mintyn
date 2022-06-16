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
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var passwordVisibiltyView: UIImageView!
    @IBOutlet weak var checkerView: UIImageView!
    
    private var remember = true
    private var isVisible = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberTF.country = Country(countryCode: "NG", phoneExtension: "+234")
        setVisibility()
        setUserRemember()
    }

    private func setVisibility() {
        let visibiltyGesture = UITapGestureRecognizer(target: self, action: #selector(self.toggleVisibility))
        passwordVisibiltyView.isUserInteractionEnabled = true
        passwordVisibiltyView.addGestureRecognizer(visibiltyGesture)
    }
    
    @objc private func toggleVisibility() {
        isVisible.toggle()
        passwordVisibiltyView.image = isVisible ? UIImage(systemName: "eye") : UIImage(systemName: "eye.slash")
        passwordTF.isSecureTextEntry = !isVisible
    }
    
    private func setUserRemember() {
        let checkerGesture = UITapGestureRecognizer(target: self, action: #selector(self.toggleCheckBox))
        checkerView.isUserInteractionEnabled = true
        checkerView.addGestureRecognizer(checkerGesture)
    }
    
    @objc private func toggleCheckBox() {
        remember.toggle()
        checkerView.image = remember ? UIImage(systemName: "checkmark.square") : UIImage(systemName: "square")
    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mintynTabBarController = storyboard.instantiateViewController(identifier: "MintynTabBarController")
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.goHome(mintynTabBarController)
    }
    
}

