//
//  UserTableViewController.swift
//  ProperTableCellDemo
//
//  Created by Shubham Kapoor on 31/01/20.
//  Copyright © 2020 Shubham Kapoor. All rights reserved.
//

import UIKit

class UserTableViewController: UITableViewController {
    
    let users = [UserInfo(name: "Shubham", email: "shubham58@gmail.com"),
                 UserInfo(name: "Kapoor", email: "kapoor58@gmail.com")]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: UserInfoTableCell.identifier) as? UserInfoTableCell else {
            return UITableViewCell()
        }
        
        let user = users[indexPath.row]
        cell.populateData(with: user)
        
        return cell
    }
    
//    MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}

