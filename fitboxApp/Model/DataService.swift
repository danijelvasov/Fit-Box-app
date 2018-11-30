//
//  DataService.swift
//  fitboxApp
//
//  Created by Danijel Vasov on 9/20/18.
//  Copyright © 2018 OSX. All rights reserved.
//

import UIKit


struct TintColor {
    let customBlue = #colorLiteral(red: 0.2901960784, green: 0.5647058824, blue: 0.8862745098, alpha: 1)
    let customGreen = #colorLiteral(red: 0.1176470588, green: 0.7176470588, blue: 0.2117647059, alpha: 1)
    let customOrange = #colorLiteral(red: 0.9607843137, green: 0.6509803922, blue: 0.137254902, alpha: 1)
    let customPink = #colorLiteral(red: 0.9764705882, green: 0.3803921569, blue: 0.6196078431, alpha: 1)
}


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
    let programList = ["How to plan your training cycle", "How to arrange your workout", "How to plan your reps performing", "Repetition ranges"]
    let programImages = ["cyclePlan", "arrangeWorkout", "perform", "table"]
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
    let howToPlanYourTrainingCycleDescription = NSLocalizedString("HOW_TO_PLAN_YOUR_TRAINING_CYCLE", comment: "howToPlanYourTrainingCycle desc")
    let howToArrangeYourWorkoutDescription = NSLocalizedString("HOW_TO_ARRANGE_YOUR_WORKOUT", comment: "How to arrange your workout desc")
    let howToPlanYoyrRepsPerformingDescription = NSLocalizedString("HOW_TO_PLAN_YOUR_REPS_PERFORMING", comment: "How to plan your reps performing desc")
    let repetitionRangesDescription = NSLocalizedString("REPETITION_RANGES", comment: "repetition ranges desc")
}


