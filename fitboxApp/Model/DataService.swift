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
    let customRed = #colorLiteral(red: 0.9254901961, green: 0.3843137255, blue: 0.3725490196, alpha: 1)
    let customDark = #colorLiteral(red: 0.2392156863, green: 0.2156862745, blue: 0.2117647059, alpha: 1)
    let customDarkForMenuView = #colorLiteral(red: 0.2901960784, green: 0.2901960784, blue: 0.2901960784, alpha: 1)
    let customGrayLight = #colorLiteral(red: 0.7529411765, green: 0.7529411765, blue: 0.7529411765, alpha: 1)
}


struct Categories {
    let lowerBody = "Lower Body Exercises" , upperBody = "Upper Body Exercises" , nutrition = "Nutrition" , programs = "Plan your workout", health = "Health", anatomy = "Anatomy Basics"
}


struct Exercises {
    let upperBodyimages = ["bench", "chestpress", "machineFly", "latpulldown",  "cablerow"]
    let upperBodyExercisesList = ["CHEST: Bench press", "CHEST: Chest press", "CHEST: Machine fly", "BACK: Lat pulldown",  "BACK: Cable row"]
    
    let lowerBodyExercisesList = ["Squats", "Lunges", "Barbell box squat", "Leg extension", "Leg curl"]
    let lowerBodyImages = ["squats", "lunges", "barbellBoxSquat", "legExtension", "legCurl"]
}


struct  Nutrition {
    let nutritionList = ["Antioxidants", "Protein", "Carbs"]
    let nutritionImages = ["antioxidants", "protein", "carbs"]
}


struct Programs {
    let programList = ["Plan your training cycle", "Arrange your workout", "Plan your reps performing", "Repetition ranges"]
    let programImages = ["planning", "planning", "planning", "table"]
}


struct Health {
    let healthList = ["Cardiovascular fitness", "Cardio myths", "Test your fitness", "Interval training"]
    let healthImages = ["cardioImage", "cardioImage", "cooperTest", "cardioImage"]
}

struct Anatomy {
    let anatomyList = ["Intro", "Understanding metabolism", "About physiology", "Exercise and metabolic response", "Energy metabolism",  "Definitions"]
    let anatomyImages = ["anatomy", "anatomy", "anatomy", "anatomy", "anatomy", "anatomy"]
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
    
    let whatIsCardiovascularFitnessDescription = NSLocalizedString("WHAT_IS_CARDIOVASCULAR_FITNESS", comment: "cardio desc")
    let mythsAboutCardioDescription = NSLocalizedString("MYTHS_ABOUT_CARDIO", comment: "myths about cardio desc")
    let testYourFitnessDescription = NSLocalizedString("TEST_YOUR_FITNESS", comment: "cooper test desc")
    let intervalTrainingDescription = NSLocalizedString("INTERVAL_TRAINING", comment: "interval training desc")
    
    let introAnatomyDescription = NSLocalizedString("INTRO_ANATOMY", comment: "intro anatamy")
    let understandingMetabolismDescription = NSLocalizedString("UNDERSTANDING_METABOLISM", comment: "metabolism desc")
    let anatomyPhysiologyDescription = NSLocalizedString("ANATOMY_PHYSIOLOGY", comment: "anatomy physiology desc")
    let exerciseAndMetabolicResponseDescription = NSLocalizedString("EXERCISE_METABOLIC_RESPONSE", comment: "metabolic response desc")
    let energyMetabolismDescription = NSLocalizedString("ENERGY_METABOLISM", comment: "energy metabolism desc")
    let definitionsDescription = NSLocalizedString("DEFINITIONS", comment: "key terms desc")
}



