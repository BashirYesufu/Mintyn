//
//  HomeViewController.swift
//  Mintyn
//
//  Created by Bash on 16/06/2022.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var transparentBackground: UIView!
    @IBOutlet weak var optionsView: UIStackView!
    @IBOutlet weak var floatingActionView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupFAB()
    }
    
    private func setupFAB() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(self.toggleOptionsVisibility))
        floatingActionView.addGestureRecognizer(gesture)
    }
    
    @objc private func toggleOptionsVisibility() {
        transparentBackground.isHidden = !transparentBackground.isHidden
        optionsView.isHidden = !optionsView.isHidden
        floatingActionView.image = optionsView.isHidden ? UIImage(systemName: "plus.circle.fill") : UIImage(systemName: "xmark.app.fill")
    }

}
