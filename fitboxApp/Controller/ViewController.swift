//
//  ViewController.swift
//  fitboxApp
//
//  Created by OSX on 6/14/18.
//  Copyright © 2018 OSX. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var categoryName : String?
    var categories = Categories()
    
    @IBOutlet weak var exercisesBtn: UIButton!
    @IBOutlet weak var aboutBtn: UIButton!
    @IBOutlet weak var foodBtn: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //self.animateButtons()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
       // self.animateButtons()
    }
    
    
    @IBAction func FoodBtnPressed(_ sender: Any) {
        categoryName = categories.food
        performSegue(withIdentifier: "goToList", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToList" {
            let dvc = segue.destination as! TableViewController
            dvc.categoryName = categoryName
        }
    }
    
    
    
    
    
    
//    func animateButtons() {
//        UIView.animate(withDuration: 1.0, delay: 0.3, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: UIView.AnimationOptions.curveEaseOut, animations: {
//            self.lowButtonConstraint.constant = 25
//            self.betweenButtonsConstraint.constant = 20
//            self.button1.alpha = 1.0
//            self.button2.alpha = 1.0
//            self.button1.layer.cornerRadius = 12
//            self.button2.layer.cornerRadius = 12
//            self.view.layoutIfNeeded()
//        }, completion: nil)
//    }
   


}

