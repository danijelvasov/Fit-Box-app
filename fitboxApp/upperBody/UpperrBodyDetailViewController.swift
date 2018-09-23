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
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var upConstraint: NSLayoutConstraint!
    @IBOutlet weak var buttonConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageConstraint: NSLayoutConstraint!
    @IBOutlet weak var removingConstraint: NSLayoutConstraint!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var leftConstraint: NSLayoutConstraint!
    @IBOutlet weak var rightConstraint: NSLayoutConstraint!
    
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var menuView: UIView!
    
    
    let dataService = UpperBodyExerciseDesc()
    var imageData: String!
    var titleData: String!
    var detailsIsOpen = false
    let redColor = #colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = titleData
        self.detailImageView.image = UIImage(named: imageData)
        self.textView.text = getDescription()
        let halfscreen = CGFloat(self.view.bounds.size.width / 2 - button.bounds.size.width / 2)
        buttonConstraint.constant = halfscreen
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let halfscreen = CGFloat(self.view.bounds.size.width / 2 - button.bounds.size.width / 2)
        buttonConstraint.constant = halfscreen
        self.textView.setContentOffset(CGPoint.zero, animated: true)
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

    @IBAction func showMorePressed(_ sender: Any) {
        detailsIsOpen = !detailsIsOpen
        let halfscreen = CGFloat(self.view.bounds.size.width / 2 - button.bounds.size.width / 2)
        
        UIView.animate(withDuration: 1, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: UIViewAnimationOptions.curveEaseInOut, animations: {
            self.upConstraint.constant = self.detailsIsOpen ? 70 : 303
            self.removingConstraint.constant = self.detailsIsOpen ? 1 : 81
            self.imageConstraint.constant = self.detailsIsOpen ? 160 : 16
            self.menuView.alpha = self.detailsIsOpen ? 0.75 : 1
            self.menuView.backgroundColor = self.detailsIsOpen ? self.redColor : UIColor.white
            self.textView.backgroundColor = self.detailsIsOpen ? self.redColor : UIColor.white
            self.textView.textColor = self.detailsIsOpen ? UIColor.white : self.redColor
            self.view.layoutIfNeeded()
        }, completion: nil)

        UIView.animate(withDuration: 1, delay: 0.15, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: UIViewAnimationOptions.curveEaseInOut, animations: {
            self.buttonConstraint.constant = self.detailsIsOpen ? 30 : halfscreen
            self.bottomConstraint.constant = self.detailsIsOpen ? -15 : 10
            let angle: CGFloat = self.detailsIsOpen ? .pi : 0.0
            self.button.transform = CGAffineTransform(rotationAngle: angle)
            self.view.layoutIfNeeded()
        }, completion: nil)
 
    }
    
//    func animateDetailViews(detailsIsOpen: Bool, upConstraint: NSLayoutConstraint, removingConstraint: NSLayoutConstraint, imageConstraint: NSLayoutConstraint, buttonConstraint: NSLayoutConstraint, menuView: UIView, textView: UITextView, halfscreen: CGFloat ) {
//
//        UIView.animate(withDuration: 1, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: UIViewAnimationOptions.curveEaseInOut, animations: {
//            self.upConstraint.constant = self.detailsIsOpen ? 70 : 303
//            self.removingConstraint.constant = self.detailsIsOpen ? 1 : 81
//            self.imageConstraint.constant = self.detailsIsOpen ? 160 : 16
//            self.menuView.alpha = self.detailsIsOpen ? 0.75 : 1
//            self.menuView.backgroundColor = self.detailsIsOpen ? self.redColor : UIColor.white
//            self.textView.backgroundColor = self.detailsIsOpen ? self.redColor : UIColor.white
//            self.textView.textColor = self.detailsIsOpen ? UIColor.white : self.redColor
//            self.view.layoutIfNeeded()
//        }, completion: nil)
//
//        UIView.animate(withDuration: 1, delay: 0.15, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: UIViewAnimationOptions.curveEaseInOut, animations: {
//            self.buttonConstraint.constant = self.detailsIsOpen ? 30 : halfscreen
//            let angle: CGFloat = self.detailsIsOpen ? .pi : 0.0
//            self.button.transform = CGAffineTransform(rotationAngle: angle)
//            self.view.layoutIfNeeded()
//        }, completion: nil)
//
//    }
    
    
    
    
    
    

}
