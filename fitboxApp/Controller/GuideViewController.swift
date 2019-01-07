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
    var details = ""
    
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
        details = recommendations.cycleType[row]
        return recommendations.cycleType[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        func getDesc()->String{
        switch details {
        case "Strength":
            return dataService.strengthDescription
        case "Hypertrophy":
            return dataService.hypertrophyDescription
        case "Fatloss":
            return dataService.fatlossDescription
        case "Conditioning":
            return dataService.conditionigDescription
        case "":
            return "Select one below:"
        default:
            return ""
        }
        }
        
        UIView.animate(withDuration: 0.3) {
            self.textView.alpha = 0
        }
        
        textView.text = getDesc()
        
        UIView.animate(withDuration: 0.5) {
            self.textView.alpha = 1
        }
    }
    
    

}
