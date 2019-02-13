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
    @IBOutlet weak var foodBtn: UIButton!
    @IBOutlet weak var programsBtn: UIButton!
    @IBOutlet weak var cardioBtn: UIButton!
    @IBOutlet weak var aboutBtn: UIButton!
    @IBOutlet weak var healthLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        healthLabel.text = "Health & Exercise guide"
    }
    
    
    
    @IBAction func anatomyBtnPressed(_ sender: Any) {
        categoryName = categories.anatomy
        performSegue(withIdentifier: "goToList", sender: self)
    }
    
    
    @IBAction func FoodBtnPressed(_ sender: Any) {
        categoryName = categories.nutrition
        performSegue(withIdentifier: "goToList", sender: self)
    }
    
    
    @IBAction func programsBtnPressed(_ sender: Any) {
        categoryName = categories.programs
        performSegue(withIdentifier: "goToList", sender: self)
    }
    
    @IBAction func cardioBtnPressed(_ sender: Any) {
        categoryName = categories.health
        performSegue(withIdentifier: "goToList", sender: self)
    }
    
    @IBAction func recommendationsBtnPressed(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToList" {
            let dvc = segue.destination as! TableViewController
            dvc.categoryName = categoryName
        }
    }
    



}

