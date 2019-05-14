//
//  NewsCell.swift
//  homeWork_04
//
//  Created by k.kochemasov on 24/04/2019.
//  Copyright © 2019 k.kochemasov. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {
    
    static let reuseId = "NewsCell"
    
    @IBOutlet var backgroundNews: UIImageView!
    @IBOutlet var labelNews: UILabel!
    @IBOutlet var textNews: UITextView!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var likeCount: UILabel!
    @IBOutlet var commentNews: UIImageView!
    @IBOutlet var commentCount: UILabel!
    @IBOutlet var blurImage: UIVisualEffectView!
    @IBOutlet var viewsNews: UIImageView!
    @IBOutlet var viewsCount: UILabel!
    
    let random = Int.random(in: 10...200)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        labelNews.text = "Что мы знаем о космосе? Черные дыры"
        textNews.text = "Это новость о космосе. Недавно нашли чёрную дыру"
        likeCount.text = String(random)
        commentCount.text = String(Int.random(in: 10...100))
        viewsCount.text = String(Int.random(in: 200...300))
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
