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
    
    let lowerBodyExercisesList = ["Squats", "Lunges"]
    let lowerBodyImages = ["squats", "lunges"]
}

struct ExercisesDescription {
    let benchPressDescription = NSLocalizedString("BENCH_PRESS", comment: "Bench press desc")
    let latPulldownDescription = NSLocalizedString("LAT_PULLDOWN", comment: "Lat pulldown desc")
    let chestPressDescription = NSLocalizedString("CHEST_PRESS", comment: "Chest press desc")
    let cableRowDescription = NSLocalizedString("CABLE_ROW", comment: "Cable row desc")
    let squats = NSLocalizedString("SQUATS", comment: "Squats desc")
    let lunges = NSLocalizedString("LUNGES", comment: "Lunges desc")
}


