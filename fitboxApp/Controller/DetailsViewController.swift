//
//  DetailsViewController.swift
//  fitboxApp
//
//  Created by OSX on 6/14/18.
//  Copyright © 2018 OSX. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

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
    
    let dataService = Description()
    var imageData: String?
    var titleData: String?
    var tintColor : UIColor?
    var detailsIsOpen = false
    
   
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.textView.textColor = tintColor
        self.navigationItem.title = titleData ?? ""
        self.detailImageView.image = UIImage(named: imageData ?? "siluette" )
        
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
        case "CHEST: Bench press":
            return dataService.benchPressDescription
        case "CHEST: Machine fly":
            return dataService.machineFlyDescription
        case "BACK: Lat pulldown":
            return dataService.latPulldownDescription
        case "CHEST: Chest press":
            return dataService.chestPressDescription
        case "BACK: Cable row":
            return dataService.cableRowDescription
        case "Squats":
            return dataService.squatsDescription
        case "Lunges":
            return dataService.lungesDescription
        case "Barbell box squat":
            return dataService.barbelBoxSquatDescription
        case "Leg extension":
            return dataService.legExtensionDescription
        case "Leg curl":
            return dataService.legCurlDescription
        case "Antioxidants":
            return dataService.antioxidansDescription
        case "Protein":
            return dataService.proteinDescription
        case "Carbs":
            return dataService.carbsDescription
        case "How to plan your training cycle":
            return dataService.howToPlanYourTrainingCycleDescription
        case "How to arrange your workout":
            return dataService.howToArrangeYourWorkoutDescription
        case "How to plan your reps performing":
            return dataService.howToPlanYoyrRepsPerformingDescription
        case "Repetition ranges":
            return dataService.repetitionRangesDescription
        case "What is cardiovascular fitness?":
            return dataService.whatIsCardiovascularFitnessDescription
        case "MYTHS about cardio":
            return dataService.mythsAboutCardioDescription
        case "Test your fitness":
            return dataService.testYourFitnessDescription
        case "Interval training":
            return dataService.intervalTrainingDescription
        default:
            return ""
        }
    }

    @IBAction func showMorePressed(_ sender: Any) {
        detailsIsOpen = !detailsIsOpen
        let halfscreen = CGFloat(self.view.bounds.size.width / 2 - button.bounds.size.width / 2)
       
        UIView.animate(withDuration: 1, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: UIView.AnimationOptions.curveEaseInOut, animations: {
            self.upConstraint.constant = self.detailsIsOpen ? 70 : 303
            self.removingConstraint.constant = self.detailsIsOpen ? 1 : 81
            self.imageConstraint.constant = self.detailsIsOpen ? 160 : 16
            self.menuView.alpha = self.detailsIsOpen ? 1 : 0.75
            self.menuView.backgroundColor = self.detailsIsOpen ? self.tintColor : UIColor.white
            self.textView.backgroundColor = self.detailsIsOpen ? self.tintColor : UIColor.white
            self.textView.textColor = self.detailsIsOpen ? UIColor.white : self.tintColor
            self.textView.font = self.detailsIsOpen ? UIFont(name: "Oswald-Regular", size: 18) : UIFont(name: "Oswald-Light", size: 18)
            self.menuView.layer.cornerRadius = self.detailsIsOpen ? 12 : 12
            self.view.layoutIfNeeded()
        }, completion: nil)

        UIView.animate(withDuration: 1, delay: 0.15, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: UIView.AnimationOptions.curveEaseInOut, animations: {
            self.detailImageView.alpha = self.detailsIsOpen ? 0 : 1
            self.buttonConstraint.constant = self.detailsIsOpen ? 30 : halfscreen
            self.bottomConstraint.constant = self.detailsIsOpen ? -15 : 10
            let angle: CGFloat = self.detailsIsOpen ? .pi : 0.0
            self.button.transform = CGAffineTransform(rotationAngle: angle)
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
}
