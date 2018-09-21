//
//  UpperrBodyDetailViewController.swift
//  fitboxApp
//
//  Created by OSX on 6/14/18.
//  Copyright © 2018 OSX. All rights reserved.
//

import UIKit

class UpperrBodyDetailViewController: UIViewController {

    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    let dataService = UpperBodyExerciseDesc()
    var imageData: String!
    var titleData: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.title = titleData
        self.detailImageView.image = UIImage(named: imageData)
        self.detailLabel.text = titleData
        self.textView.text = getDescription()
        
    }

    
    func getDescription() -> String {
        switch titleData {
        case "Bench press":
            return dataService.benchPressDescription
        case "Lat pulldown":
            return dataService.latPulldownDescription
        case "Chest press":
            return dataService.chestPressDescription
        case "Cable row":
            return dataService.cableRowDescription
        default:
            return ""
        }
    }


}
