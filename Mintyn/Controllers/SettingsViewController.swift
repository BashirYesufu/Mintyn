//
//  SettingsViewController.swift
//  Mintyn
//
//  Created by Bash on 16/06/2022.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate , UITableViewDataSource{

    @IBOutlet weak var settingsTableView: UITableView!
    var settingsItems: [SettingsViewItem] = [
        .init(title: "Profile", icon: UIImage(systemName: "person")!),
        .init(title: "Account Management", icon:  UIImage(systemName: "creditcard")!),
        .init(title: "Referrals", icon:  UIImage(systemName: "megaphone")!),
        .init(title: "Legal", icon:  UIImage(systemName: "shield")!),
        .init(title: "Help and Support",  icon: UIImage(systemName: "square.and.pencil")!),
        .init(title: "System", icon:  UIImage(systemName: "iphone.homebutton")!),
        .init(title: "Create Business Account", icon:  UIImage(systemName: "arrow.triangle.2.circlepath")!),
        .init(title: "Logout", icon:  UIImage(systemName: "iphone.and.arrow.forward")!)
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    private func setupTableView(){
        settingsTableView.delegate = self
        settingsTableView.dataSource = self
        settingsTableView.rowHeight = 50
        settingsTableView.separatorStyle = .none
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return settingsItems.count
        }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsTableViewCell", for: indexPath) as! SettingsTableViewCell
        let item = settingsItems[indexPath.row]
        cell.assignCellValues(title: item.title, icon: item.icon )
       return cell
   }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let indexPath = indexPath.row
        
        switch indexPath {
        case 3:
            let controller = self.storyboard?.instantiateViewController(identifier: "LegalViewController") as! LegalViewController
            self.navigationController?.pushViewController(controller, animated: true)
        case 5:
            let controller = self.storyboard?.instantiateViewController(identifier: "SystemViewController") as! SystemViewController
            self.navigationController?.pushViewController(controller, animated: true)
        case 7:
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let loginNC = storyboard.instantiateViewController(identifier: "LoginViewController")
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.goTo(loginNC)
        default:
            return
        }
       
    }

}
