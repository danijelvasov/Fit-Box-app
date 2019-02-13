//
//  AboutViewController.swift
//  fitboxApp
//
//  Created by Danijel Vasov on 1/30/19.
//  Copyright © 2019 OSX. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    
    let dataService = About()
    
    @IBOutlet weak var developedByLbl: UILabel!
    @IBOutlet weak var danijelLbl: UILabel!
    @IBOutlet weak var recommendedLbl: UILabel!
    
    @IBOutlet weak var followButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        followButton.setTitle("Follow Fit on Instagram >", for: .normal)
        developedByLbl.text = dataService.developedBy
        danijelLbl.text = dataService.danijel
        recommendedLbl.text = dataService.recommendedApp
    }
    

    @IBAction func followBtnPressed(_ sender: Any) {
        
        let link = dataService.link
        guard let followURL = URL(string: link) else {return}
        UIApplication.shared.open(followURL, options: [:], completionHandler: nil)
        
    }
    
    

}
