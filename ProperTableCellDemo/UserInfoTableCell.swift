//
//  UserInfoTableCell.swift
//  ProperTableCellDemo
//
//  Created by Shubham Kapoor on 31/01/20.
//  Copyright © 2020 Shubham Kapoor. All rights reserved.
//

import UIKit

class UserInfoTableCell: UITableViewCell {
        
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
//        Used if you have plenty of data to put in Table, this will empty the cell contents before its reuse highly recommended while playing with images.
        lblName.text?.removeAll()
        lblEmail.text?.removeAll()
    }

    func populateData(with user: UserInfo) {
        lblName.text = user.name
        lblEmail.text = user.email
    }
}

extension UITableViewCell {
    
    static var identifier: String {
        return String(describing: self)
    }
}
