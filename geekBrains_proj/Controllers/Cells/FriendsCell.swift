//
//  FriendsCell.swift
//  homeWork_03
//
//  Created by k.kochemasov on 10/04/2019.
//  Copyright © 2019 k.kochemasov. All rights reserved.
//

import UIKit

class FriendsCell: UITableViewCell {
    
    static let reuseId = "FriendsCell"

    @IBOutlet var friendsLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var avatarPic: ClippedView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}


