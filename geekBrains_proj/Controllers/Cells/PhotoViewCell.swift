//
//  PhotoViewCell.swift
//  homeWork_03
//
//  Created by k.kochemasov on 10/04/2019.
//  Copyright © 2019 k.kochemasov. All rights reserved.
//

import UIKit

class PhotoViewCell: UICollectionViewCell {
    
    static let reuseId = "PhotoViewCell"
    
    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var likeCount: UILabel!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIImageView.animate(withDuration: 0.5,
                            delay: 0,
                            usingSpringWithDamping: 0.8,
                            initialSpringVelocity: 0.2,
                            animations: {
                                self.iconImageView.bounds = CGRect(x: 0, y: 0, width: 150, height: 150)
        }, completion: nil)
        self.iconImageView.startAnimating()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIImageView.animate(withDuration: 1,
                            delay: 0.2,
                            usingSpringWithDamping: 0.3,
                            initialSpringVelocity: 0.4,
                            animations: {
                                self.iconImageView.bounds = CGRect(x: 0, y: 0, width: 200, height: 200)
        }, completion: nil)
        self.iconImageView.startAnimating()
    }
}

