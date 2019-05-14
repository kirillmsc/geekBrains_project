//
//  avatarShadow.swift
//  homeWork_04
//
//  Created by k.kochemasov on 14/04/2019.
//  Copyright © 2019 k.kochemasov. All rights reserved.
//

import UIKit

//@IBDesignable class avatarShadow: UIView {
//    @IBInspectable public var filled = true {
//        didSet {
//            setNeedsDisplay()
//        }
//    }
//}

//extension UIView {
//    @IBInspectable var shadowColor: CGColor {
//        set { layer.shadowColor = newValue}
//        get { return layer.shadowColor ?? UIColor.black.cgColor}
//    }
//    @IBInspectable var shadowOpacity: Float {
//        set { layer.shadowOpacity = newValue}
//        get { return layer.shadowOpacity }
//    }
//    @IBInspectable var shadowRadius: CGFloat {
//        set { layer.shadowRadius = newValue}
//        get { return layer.shadowRadius}
//    }
//    @IBInspectable var shadowOffset: CGSize {
//        set { layer.shadowOffset = newValue}
//        get { return layer.shadowOffset}
//    }
//
//}

@IBDesignable class AvatarShadow: UIView {
    @IBInspectable var shadowColor: UIColor = .red
    @IBInspectable var shadowRadius: CGFloat = 7
    @IBInspectable var shadowOpacity: Float = 0.75
    @IBInspectable var shadowOffset: CGSize {
        set { layer.shadowOffset = newValue}
        get { return layer.shadowOffset}
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = shadowColor.cgColor
        layer.shadowRadius = shadowRadius
        layer.shadowOpacity = shadowOpacity
        }
    
    override func layoutSubviews() {
        super .layoutSubviews()
        
        layer.cornerRadius = bounds.height/2
    }
}

class ClippedView: UIImageView {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.masksToBounds = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}
