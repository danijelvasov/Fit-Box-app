//
//  ViewController.swift
//  fitboxApp
//
//  Created by OSX on 6/14/18.
//  Copyright © 2018 OSX. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var lowButtonConstraint: NSLayoutConstraint!
    @IBOutlet weak var betweenButtonsConstraint: NSLayoutConstraint!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.animateButtons()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.animateButtons()
    }
    
    func animateButtons() {
        UIView.animate(withDuration: 1.0, delay: 0.3, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: UIView.AnimationOptions.curveEaseOut, animations: {
            self.lowButtonConstraint.constant = 25
            self.betweenButtonsConstraint.constant = 20
            self.button1.alpha = 1.0
            self.button2.alpha = 1.0
            self.button1.layer.cornerRadius = 12
            self.button2.layer.cornerRadius = 12
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
   


}

