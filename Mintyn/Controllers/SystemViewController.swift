//
//  SystemViewController.swift
//  Mintyn
//
//  Created by Bash on 16/06/2022.
//

import UIKit

class SystemViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var systemTableView: UITableView!
    
    var modes: [AppearanceMode] = [.defaultMode, .darkMode, .lightMode]
    var currentMode: AppearanceMode = .defaultMode
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    private func setupTableView(){
        systemTableView.delegate = self
        systemTableView.dataSource = self
        systemTableView.rowHeight = 50
        systemTableView.separatorStyle = .none
        let defaultApparance = UIScreen.main.traitCollection.userInterfaceStyle
        switch defaultApparance {
        case .light:
            currentMode = .lightMode
        case .dark:
            currentMode = .darkMode
        default:
            currentMode = .defaultMode
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modes.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Appearance"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // UIApplication.shared.keyWindow
        let window = UIApplication.shared.connectedScenes
            .filter({$0.activationState == .foregroundActive})
            .compactMap({$0 as? UIWindowScene})
            .first?.windows
            .filter({$0.isKeyWindow}).first
        currentMode = modes[indexPath.row]
        window?.overrideUserInterfaceStyle = currentMode.mode
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SystemTableViewCell", for: indexPath) as! SystemTableViewCell
        let selectedMode = modes[indexPath.row]
        cell.parseTitle(title: selectedMode.rawValue)
        cell.selectionStyle = .none
        cell.accessoryType = selectedMode == currentMode ? .checkmark : .none
        return cell
    }
    
}
