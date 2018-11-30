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
    var tintColor : UIColor?
    var categories = Categories()
    var color = TintColor()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
         self.navigationController?.navigationBar.barTintColor = color.customBlue
    }
    

    @IBAction func upperBodyBtnPressed(_ sender: Any) {
        categoryName = categories.upperBody
        tintColor = color.customBlue
        performSegue(withIdentifier: "goToTableView", sender: self)
    }
    
    @IBAction func lowerBodyBtnPressed(_ sender: Any) {
        categoryName = categories.lowerBody
        tintColor = color.customBlue
        performSegue(withIdentifier: "goToTableView", sender: self)
        
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToTableView" {
            let dVC = segue.destination as! TableViewController
            dVC.categoryName = categoryName
            dVC.tintColor = tintColor
        }
    }
    
    
}
