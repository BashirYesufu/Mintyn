//
//  LegalTableViewCell.swift
//  Mintyn
//
//  Created by Bash on 16/06/2022.
//

import UIKit

class LegalTableViewCell: UITableViewCell {

    @IBOutlet weak var legalTitle: UILabel!
    
    func assignTitleLabel(title: String){
        legalTitle.text = title
    }
    
}
