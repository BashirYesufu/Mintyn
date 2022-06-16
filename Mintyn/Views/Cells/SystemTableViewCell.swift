//
//  SystemTableViewCell.swift
//  Mintyn
//
//  Created by Bash on 16/06/2022.
//
import UIKit


class SystemTableViewCell: UITableViewCell {
   
    @IBOutlet weak var titleLabel: UILabel!
    
    func parseTitle(title: String) {
        titleLabel.text = title
    }
}
