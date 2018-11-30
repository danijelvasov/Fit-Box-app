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
    var color = TintColor()
    var tintColor : UIColor?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
         self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1176470588, green: 0.7176470588, blue: 0.2117647059, alpha: 1)
    }
    

    
    @IBOutlet weak var exercisesBtn: UIButton!
    @IBOutlet weak var foodBtn: UIButton!
    @IBOutlet weak var programsBtn: UIButton!
    @IBOutlet weak var cardioBtn: UIButton!
    @IBOutlet weak var aboutBtn: UIButton!
    
    
    
    @IBAction func FoodBtnPressed(_ sender: Any) {
        categoryName = categories.food
        tintColor = color.customGreen
        performSegue(withIdentifier: "goToList", sender: self)
    }
    
    
    @IBAction func programsBtnPressed(_ sender: Any) {
        categoryName = categories.programs
        tintColor = color.customOrange
        performSegue(withIdentifier: "goToList", sender: self)
    }
    
    @IBAction func cardioBtnPressed(_ sender: Any) {
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToList" {
            let dvc = segue.destination as! TableViewController
            dvc.categoryName = categoryName
            dvc.tintColor = tintColor
        }
    }
    



}

