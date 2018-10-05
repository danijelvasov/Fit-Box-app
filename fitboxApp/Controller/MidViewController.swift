//
//  MidViewController.swift
//  fitboxApp
//
//  Created by Danijel Vasov on 10/1/18.
//  Copyright © 2018 OSX. All rights reserved.
//

import UIKit

class MidViewController: UIViewController {
    
    var isUpperSelected : Bool?
    var categoryName : String?

    @IBAction func upperBodyBtnPressed(_ sender: Any) {
        isUpperSelected = true
        categoryName = "Upper Body"
        performSegue(withIdentifier: "goToTableView", sender: self)
    }
    
    @IBAction func lowerBodyBtnPressed(_ sender: Any) {
        isUpperSelected = false
        categoryName = "Lower Body"
        performSegue(withIdentifier: "goToTableView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToTableView" {
            let dVC = segue.destination as! TableViewController
            dVC.isUpperSelected = isUpperSelected
            dVC.categoryName = categoryName
        }
    }
}
