//
//  DataService.swift
//  fitboxApp
//
//  Created by Danijel Vasov on 9/20/18.
//  Copyright © 2018 OSX. All rights reserved.
//

import UIKit

struct Exercises {
    let upperBodyimages = ["bench","latpulldown", "chestpress", "cablerow"]
    let upperBodyExercisesList = ["Bench press","Lat pulldown", "Chest press", "Cable row"]
    
    let lowerBodyExercisesList = ["Squats", "Lunges", "Barbell box squat"]
    let lowerBodyImages = ["squats", "lunges", "barbellBoxSquat"]
}

struct ExercisesDescription {
    let benchPressDescription = NSLocalizedString("BENCH_PRESS", comment: "Bench press desc")
    let latPulldownDescription = NSLocalizedString("LAT_PULLDOWN", comment: "Lat pulldown desc")
    let chestPressDescription = NSLocalizedString("CHEST_PRESS", comment: "Chest press desc")
    let cableRowDescription = NSLocalizedString("CABLE_ROW", comment: "Cable row desc")
    let squats = NSLocalizedString("SQUATS", comment: "Squats desc")
    let lunges = NSLocalizedString("LUNGES", comment: "Lunges desc")
    let barbelBoxSquat = NSLocalizedString("BARBELL_BOX_SQUAT", comment: "Barbell box squat desc")
}


