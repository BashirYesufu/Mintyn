//
//  LegalViewController.swift
//  Mintyn
//
//  Created by Bash on 16/06/2022.
//

import UIKit
import SafariServices

class LegalViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    @IBOutlet weak var legalTableView: UITableView!
    
    var legalItems: [LegalViewModel] = [
        .init(title: "Mintyn Account - Terms & Conditions", itemURL: "https://mintyn.com/terms"),
        .init(title: "Mintyn Privacy Policy", itemURL: "https://mintyn.com/privacy-policy"),
        .init(title: "Saving Goal - Terms & Conditions", itemURL: "https://mintyn.com/terms")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    private func setupTableView(){
        legalTableView.delegate = self
        legalTableView.dataSource = self
        legalTableView.rowHeight = 50
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return legalItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LegalTableViewCell", for: indexPath) as! LegalTableViewCell
        let legalItem = legalItems[indexPath.row]
        cell.assignTitleLabel(title: legalItem.title)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let legalItem = legalItems[indexPath.row]
        guard let url = URL(string: legalItem.itemURL) else {return}
        let safariConfig = SFSafariViewController.Configuration()
        safariConfig.entersReaderIfAvailable = true
        let controller = SFSafariViewController(url: url, configuration: safariConfig)
        present(controller, animated: true)
    }

}
