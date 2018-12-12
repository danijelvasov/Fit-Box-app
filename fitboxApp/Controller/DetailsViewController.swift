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
    var detailsIsOpen = false
    var customColor = TintColor()
    
   
   
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationItem.title = titleData ?? ""
        self.detailImageView.image = UIImage(named: imageData ?? "siluette" )
        self.textView.text = getDescription()
        let halfscreen = CGFloat(self.view.bounds.size.width / 2 - button.bounds.size.width / 2)
        buttonConstraint.constant = halfscreen
        self.textView.setContentOffset(CGPoint.zero, animated: true)
        self.detailImageView.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.detailImageView.layer.shadowOpacity = 0.5
        self.detailImageView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
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
        case "Plan your training cycle":
            return dataService.howToPlanYourTrainingCycleDescription
        case "Arrange your workout":
            return dataService.howToArrangeYourWorkoutDescription
        case "Plan your reps performing":
            return dataService.howToPlanYoyrRepsPerformingDescription
        case "Repetition ranges":
            return dataService.repetitionRangesDescription
        case "Cardiovascular fitness":
            return dataService.whatIsCardiovascularFitnessDescription
        case "Cardio myths":
            return dataService.mythsAboutCardioDescription
        case "Test your fitness":
            return dataService.testYourFitnessDescription
        case "Interval training":
            return dataService.intervalTrainingDescription
        case "About physiology":
            return dataService.anatomyPhysiologyDescription
        default:
            return ""
        }
    }

    @IBAction func showMorePressed(_ sender: Any) {
        detailsIsOpen = !detailsIsOpen
        let halfscreen = CGFloat(self.view.bounds.size.width / 2 - button.bounds.size.width / 2)
       
        UIView.animate(withDuration: 1, delay: 0.0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: UIView.AnimationOptions.curveEaseInOut, animations: {
                self.detailImageView.alpha = self.detailsIsOpen ? 0 : 1
                self.upConstraint.constant = self.detailsIsOpen ? 70 : 303
                self.removingConstraint.constant = self.detailsIsOpen ? 10 : 81
                self.imageConstraint.constant = self.detailsIsOpen ? 160 : 16
                self.menuView.alpha = self.detailsIsOpen ? 0.95 : 0.75
                self.menuView.backgroundColor = self.detailsIsOpen ? self.customColor.customDarkForMenuView : UIColor.clear
                self.menuView.layer.cornerRadius = self.detailsIsOpen ? 10 : 0
                self.buttonConstraint.constant = self.detailsIsOpen ? 30 : halfscreen
                self.bottomConstraint.constant = self.detailsIsOpen ? -15 : 10
            self.textView.textColor = self.detailsIsOpen ? self.customColor.customGreen : self.customColor.customGrayLight
                let angle: CGFloat = self.detailsIsOpen ? .pi : 0.0
                self.button.transform = CGAffineTransform(rotationAngle: angle)
            
                self.view.layoutIfNeeded()
                
        }, completion: nil)
    }
    
    
}
