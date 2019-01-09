//
//  RecommendedViewController.swift
//  fitboxApp
//
//  Created by Danijel Vasov on 1/5/19.
//  Copyright © 2019 OSX. All rights reserved.
//

import UIKit

class GuideViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var textView: UITextView!
    
    let dataService = Description()
    let recommendations = Recommendations()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        picker.delegate = self
        picker.dataSource = self
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return recommendations.cycleType.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return recommendations.cycleType[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let typeSelected = recommendations.cycleType[row]

        func getDesc()->String{
            
            switch typeSelected {
            case "Strength":
                return dataService.strengthDescription
            case "Hypertrophy":
                return dataService.hypertrophyDescription
            case "Fatloss":
                return dataService.fatlossDescription
            case "Conditioning":
                return dataService.conditionigDescription
            case "By body shape: Hourglass":
                return dataService.hourglassDescription
            case "By body shape: Ruler":
                return dataService.rulerDescription
            case "By body shape: Cone":
                return dataService.coneDesription
            case "By body shape: Spoon":
                return dataService.spoonDescription
            default:
                return "Please choose a type below:"
            }
        }
        
        
        UIView.animate(withDuration: 0.3) {
            self.textView.alpha = 0
            self.textView.setContentOffset(CGPoint.zero, animated: false)
        }
        
        textView.text = getDesc()
        
        UIView.animate(withDuration: 0.5) {
            self.textView.alpha = 1
        }
    }
    
    
    
    
    
    
    
}
