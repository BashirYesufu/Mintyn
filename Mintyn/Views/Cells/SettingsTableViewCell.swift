//
//  SettingsTableViewCell.swift
//  Mintyn
//
//  Created by Bash on 16/06/2022.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
  
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func assignCellValues(title: String, icon: UIImage) {
        iconView.image = icon
        titleLabel.text = title
    }
}
