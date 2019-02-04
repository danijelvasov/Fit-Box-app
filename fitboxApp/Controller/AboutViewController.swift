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
    @IBOutlet weak var followLbl: UILabel!
    @IBOutlet weak var devIGLbl: UILabel!
    @IBOutlet weak var recommendedLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        developedByLbl.text = dataService.developedBy
        danijelLbl.text = dataService.danijel
        followLbl.text = dataService.followDevOnIG
        devIGLbl.text = dataService.igDanijel
        recommendedLbl.text = dataService.recommendedApp
    }
    

    

}
