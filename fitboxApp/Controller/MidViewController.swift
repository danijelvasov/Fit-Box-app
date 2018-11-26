//
//  MidViewController.swift
//  fitboxApp
//
//  Created by Danijel Vasov on 10/1/18.
//  Copyright © 2018 OSX. All rights reserved.
//

import UIKit

class MidViewController: UIViewController {
    
    var categoryName : String?
    var categories = Categories()

    @IBAction func upperBodyBtnPressed(_ sender: Any) {
        categoryName = categories.upperBody
        performSegue(withIdentifier: "goToTableView", sender: self)
    }
    
    @IBAction func lowerBodyBtnPressed(_ sender: Any) {
        categoryName = categories.lowerBody
        performSegue(withIdentifier: "goToTableView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToTableView" {
            let dVC = segue.destination as! TableViewController
            dVC.categoryName = categoryName
        }
    }
    
    
}
