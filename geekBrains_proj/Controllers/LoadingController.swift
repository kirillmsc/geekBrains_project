//
//  LoadingController.swift
//  homeWork_04
//
//  Created by k.kochemasov on 04/05/2019.
//  Copyright © 2019 k.kochemasov. All rights reserved.
//

import UIKit

class LoadingController: UIViewController {

    @IBOutlet weak var elementFirst: UIView!
    @IBOutlet weak var elementSecond: UIView!
    @IBOutlet weak var elementThird: UIView!
    @IBOutlet weak var elementFourth: UIView!
    @IBOutlet weak var elementFifth: UIView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        
        UIView.animateKeyframes(withDuration: 1.0, delay: 0, options: .calculationModeCubicPaced, animations: {
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.2, animations: {
                self.elementFirst.alpha = 0.0
                })
            UIView.addKeyframe(withRelativeStartTime: 0.4, relativeDuration: 0.2, animations: {
                self.elementSecond.alpha = 0.0
                })
            UIView.addKeyframe(withRelativeStartTime: 0.8, relativeDuration: 0.2, animations: {
                self.elementThird.alpha = 0.0
                })
            UIView.addKeyframe(withRelativeStartTime: 1.2, relativeDuration: 0.2, animations: {
                self.elementFourth.alpha = 0.0
                })
            UIView.addKeyframe(withRelativeStartTime: 1.6, relativeDuration: 0.2, animations: {
                self.elementFifth.alpha = 0.0
                })
        }, completion: { completed in
            UIView.animateKeyframes(withDuration: 1.0, delay: 0, options: .calculationModeCubicPaced, animations: {
                UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.2, animations: {
                    self.elementFirst.alpha = 1.0
                })
                UIView.addKeyframe(withRelativeStartTime: 0.4, relativeDuration: 0.2, animations: {
                    self.elementSecond.alpha = 1.0
                })
                UIView.addKeyframe(withRelativeStartTime: 0.8, relativeDuration: 0.2, animations: {
                    self.elementThird.alpha = 1.0
                })
                UIView.addKeyframe(withRelativeStartTime: 1.2, relativeDuration: 0.2, animations: {
                    self.elementFourth.alpha = 1.0
                })
                UIView.addKeyframe(withRelativeStartTime: 1.6, relativeDuration: 0.2, animations: {
                    self.elementFifth.alpha = 1.0
                })
                func prepare(segue: UIStoryboardSegue, sender: AnyObject?) {
                    if segue.identifier == "AfterAnSegue" {
                        let _ = segue.destination as? FriendsViewController
                    }
                }
            })
        })
    }
}
