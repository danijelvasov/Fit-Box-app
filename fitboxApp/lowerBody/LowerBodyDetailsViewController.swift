//
//  LowerBodyDetailsViewController.swift
//  fitboxApp
//
//  Created by Danijel Vasov on 9/13/18.
//  Copyright © 2018 OSX. All rights reserved.
//

import UIKit

class LowerBodyDetailsViewController: UIViewController {

    @IBOutlet weak var detailsImage: UIImageView!
    @IBOutlet weak var detailsTextView: UITextView!
    
    let dataService = LowerBodyExerciseDesc()
    
    var imageData : String!
    var titleData : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = titleData
        self.detailsImage.image = UIImage(named: imageData)
        self.navigationItem.title = titleData
        self.detailsTextView.text = getDescription()
    }
    
    func getDescription() -> String {
    switch titleData {
        case "Squats":
            return dataService.squats
        case "Lunges":
            return dataService.lunges
        default:
            return ""
        }
    }
    
    

}
