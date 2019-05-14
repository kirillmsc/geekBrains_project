//
//  LikeNews.swift
//  homeWork_04
//
//  Created by k.kochemasov on 25/04/2019.
//  Copyright © 2019 k.kochemasov. All rights reserved.
//

import UIKit

class LikeNews: UIControl {

    @IBAction func likeButton() {
    }
    //    public var like: Bool = false
//    let heartImageView = UIImageView()
//    let likeCounter = UILabel()
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//        setupView()
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//
//        setupView()
//    }
//
//    private func setupView(){
//
//        let tapGR = UITapGestureRecognizer(target: self, action: #selector(likeTapped))
//        self.addGestureRecognizer(tapGR)
//
//
//        heartImageView.image = UIImage(named: "heart_empty")
//        likeCounter.text = "0"
//    }
//
//    override func layoutSubviews() {
//        heartImageView.frame = bounds
//
//        heartImageView.translatesAutoresizingMaskIntoConstraints = false
//        likeCounter.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            heartImageView.heightAnchor.constraint(equalToConstant: bounds.height),
//            heartImageView.widthAnchor.constraint(equalTo: heartImageView.heightAnchor),
//            heartImageView.topAnchor.constraint(equalTo: self.topAnchor),
//            heartImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
//            likeCounter.trailingAnchor.constraint(equalTo: heartImageView.leadingAnchor),
//            likeCounter.widthAnchor.constraint(equalToConstant: 20),
//            likeCounter.bottomAnchor.constraint(equalTo: heartImageView.bottomAnchor)
//            ])
//
//    }
//
//    //MARK: - Privates
//    @objc func likeTapped() {
//        like.toggle()
//        heartImageView.image = like ? UIImage(named: "heart_filled") : UIImage(named: "heart_empty")
//        likeCounter.text = like ? "1" : "0"
//        likeCounter.textColor = like ? .red : .black
//    }
}
