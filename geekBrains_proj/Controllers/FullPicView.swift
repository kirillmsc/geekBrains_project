////
////  PhotoView.swift
////  geekBrainsProj
////
////  Created by k.kochemasov on 06/05/2019.
////  Copyright © 2019 k.kochemasov. All rights reserved.
////
//
//import UIKit
//
//class FullPicViewController: UIViewController {
//    
//    @IBOutlet weak var swipeImageView: UIImageView!
//    let imageName = ["img0", "img1", "img2", "img3"]
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture))
//        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
//        self.view.addGestureRecognizer(swipeLeft)
//        
//        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture))
//        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
//        self.view.addGestureRecognizer(swipeRight)
//    }
//    
//    var currentImage = 0
//    @objc func respondToSwipeGesture(gesture: UIGestureRecognizer) {
//        
//        let swipeViewTransition = CATransition()
//        swipeViewTransition.type = CATransitionType.push
//        swipeViewTransition.duration = 0.7
//        
//        
//        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
//            
//            switch swipeGesture.direction {
//            case UISwipeGestureRecognizer.Direction.left:
//                if currentImage == imageName.count - 1 {
//                    currentImage = 0
//                }else{
//                    currentImage += 1
//                }
//                swipeImageView.image = UIImage(named: imageName[currentImage])
//                swipeViewTransition.subtype = CATransitionSubtype.fromRight
//                swipeImageView.layer.add(swipeViewTransition, forKey: kCATransition)
//                
//                
//            case UISwipeGestureRecognizer.Direction.right:
//                if currentImage == 0 {
//                    currentImage = imageName.count - 1
//                }else{
//                    currentImage -= 1
//                }
//                swipeImageView.image = UIImage(named: imageName[currentImage])
//                swipeViewTransition.subtype = CATransitionSubtype.fromLeft
//                swipeImageView.layer.add(swipeViewTransition, forKey: kCATransition)
//            default:
//                break
//            }
//        }
//    }
//}
