//
//  DataService.swift
//  fitboxApp
//
//  Created by Danijel Vasov on 9/20/18.
//  Copyright © 2018 OSX. All rights reserved.
//

import UIKit


struct Categories {
    let lowerBody = "Lower Body Exercises" , upperBody = "Upper Body Exercises" , food = "Food" , programs = "Programs"
}


struct Exercises {
    let upperBodyimages = ["bench", "machineFly", "latpulldown", "chestpress", "cablerow"]
    let upperBodyExercisesList = ["Bench press", "Machine fly", "Lat pulldown", "Chest press", "Cable row"]
    
    let lowerBodyExercisesList = ["Squats", "Lunges", "Barbell box squat", "Leg extension", "Leg curl"]
    let lowerBodyImages = ["squats", "lunges", "barbellBoxSquat", "legExtension", "legCurl"]
}


struct  Food {
    let foodList = ["Antioxidants", "Protein", "Carbs"]
    let foodImages = ["antioxidants", "protein", "carbs"]
}


struct Programs {
    let programList = ["Fat loss", "Muscle gain"]
    let programImages = [""]
}


struct Description {
    let benchPressDescription = NSLocalizedString("BENCH_PRESS", comment: "Bench press desc")
    let machineFlyDescription = NSLocalizedString("MACHINE_FLY", comment: "Machine fly desc")
    let latPulldownDescription = NSLocalizedString("LAT_PULLDOWN", comment: "Lat pulldown desc")
    let chestPressDescription = NSLocalizedString("CHEST_PRESS", comment: "Chest press desc")
    let cableRowDescription = NSLocalizedString("CABLE_ROW", comment: "Cable row desc")
    let squatsDescription = NSLocalizedString("SQUATS", comment: "Squats desc")
    let lungesDescription = NSLocalizedString("LUNGES", comment: "Lunges desc")
    let barbelBoxSquatDescription = NSLocalizedString("BARBELL_BOX_SQUAT", comment: "Barbell box squat desc")
    let legExtensionDescription = NSLocalizedString("LEG_EXTENSION", comment: "Leg extension desc")
    let legCurlDescription = NSLocalizedString("LEG_CURL", comment: "Leg curl desc")
    let antioxidansDescription = NSLocalizedString("ANTIOXIDANTS", comment: "antioxidants desc")
    let proteinDescription = NSLocalizedString("PROTEIN", comment: "protein desc")
    let carbsDescription = NSLocalizedString("CARBS", comment: "carbs desc")
    let fatlossDescription = NSLocalizedString("FATLOSS", comment: "fatloss desc")
}
