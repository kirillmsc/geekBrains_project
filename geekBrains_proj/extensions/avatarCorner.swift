//
//  imageDesigne.swift
//  homeWork_04
//
//  Created by k.kochemasov on 13/04/2019.
//  Copyright © 2019 k.kochemasov. All rights reserved.
//

import UIKit

@IBDesignable class avatarPic: UIImageView {
}

extension UIImageView {
    @IBInspectable var cornerRadius: CGFloat {
        set { layer.cornerRadius = newValue }
        get { return layer.cornerRadius}
    }
}


