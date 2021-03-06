//
//  DataService.swift
//  fitboxApp
//
//  Created by Danijel Vasov on 9/20/18.
//  Copyright © 2018 OSX. All rights reserved.
//

import UIKit


struct Categories {
    let lowerBody = "Lower Body Exercises" , upperBody = "Upper Body Exercises" , nutrition = "Nutrition" , programs = "Plan your workout", health = "Health", anatomy = "Anatomy Basics"
}


struct Exercises {
    let upperBodyimages = ["bench", "chestpress", "machineFly", "latpulldown",  "cablerow", "landmineRow", "seatedOverheadPress", "lateralRaise", "frontRaise", "lyingLateralRaise", "bicepsCurl", "concentrationCurl", "barbellCurl", "tricepsKickback", "tricepsPushup", "tricepsRope", "coreJackknife", "corePlank", "reversedPlank"]
    let upperBodyExercisesList = ["CHEST: Bench press", "CHEST: Chest press", "CHEST: Machine fly", "BACK: Lat pulldown",  "BACK: Cable row", "BACK: Landmine row", "SHOULDERS: Seated overhead press", "SHOULDERS: Lateral raise", "SHOULDERS: Front raise", "SHOULDERS: Lying lateral raise", "BICEPS: Dumbbell curl", "BICEPS: Concentration curl", "BICEPS: Barbell curl", "TRICEPS: Dumbbell kickback", "TRICEPS: Close-grip pushup", "TRICEPS: Rope pushdown", "CORE: Jackknife", "CORE: Plank", "CORE: Reversed plank"]
    
    let lowerBodyExercisesList = ["Squats", "Lunges", "Barbell box squat", "Leg extension", "Leg curl"]
    let lowerBodyImages = ["squats", "lunges", "barbellBoxSquat", "legExtension", "legCurl"]
}


struct  Nutrition {
    let nutritionList = ["Antioxidants", "Protein", "Carbs", "Fats", "Hand-size portion guidlines"]
    let nutritionImages = ["antioxidants", "protein", "carbs", "fats", "portions"]
}


struct Programs {
    let programList = ["Test your fitness", "Plan your training cycle", "Arrange your workout", "Plan your reps performing", "Repetition ranges", "Interval training"]
    let programImages = ["cooperTest", "planning", "planning", "planning", "table", "intervalTraining"]
}


struct Health {
    let healthList = ["Cardiovascular health & fitness", "Cardio myths", "Psychology & fitness", "Exercise and hypertension", "Exercise and diabetes" ]
    let healthImages = ["cardiohealth", "noSign", "motivation", "hyper", "diabetes"]
}

struct Anatomy {
    let anatomyList = ["Find your body type", "Intro", "Understanding metabolism", "About physiology", "Exercise and metabolic response", "Energy metabolism",  "Definitions"]
    let anatomyImages = ["bodyTypes","anatomy", "anatomy", "anatomy", "anatomy", "anatomy", "anatomy"]
}


struct Description {
    let benchPressDescription = NSLocalizedString("BENCH_PRESS", comment: "Bench press desc")
    let machineFlyDescription = NSLocalizedString("MACHINE_FLY", comment: "Machine fly desc")
    let latPulldownDescription = NSLocalizedString("LAT_PULLDOWN", comment: "Lat pulldown desc")
    let chestPressDescription = NSLocalizedString("CHEST_PRESS", comment: "Chest press desc")
    let cableRowDescription = NSLocalizedString("CABLE_ROW", comment: "Cable row desc")
    let landmineRowDescription = NSLocalizedString("LANDMINE_ROW", comment: "landmine row desc")
    let seatedOverheadPressDescription = NSLocalizedString("SEATED_OVERHEAD_PRESS", comment: "seated overhead press desc")
    let lateralRaiseDescription = NSLocalizedString("LATERAL_RAISE", comment: "lateral raise desc")
    let frontRaiseDescription = NSLocalizedString("FRONT_RAISE", comment: "front raise desc")
    let lyingLateralRaiseDescription = NSLocalizedString("LYING_LATERAL_RAISE", comment: "lying lateral raise desc")
    let bicepsCurlDescription = NSLocalizedString("BICEPS_CURL", comment: "biceps curl desc")
    let concentrationCurlDescription = NSLocalizedString("CONCENTRATION_CURL", comment: "concentration curl desc")
    let barbellCurlDescription = NSLocalizedString("BARBELL_CURL", comment: "barbell curl desc")
    let tricepsKickbackDescription = NSLocalizedString("TRICEPS_KICKBACK", comment: "triceps kickback desc")
    let tricepsPushupDescription = NSLocalizedString("TRICEPS_PUSHUP", comment: "triceps pushup desc")
    let tricepsRopeDescription = NSLocalizedString("TRICEPS_ROPE", comment: "triceps rope pushdown desc")
    let coreJackknifeDescription = NSLocalizedString("CORE_JACKKNIFE", comment: "core jackknife desc")
    let corePlankDescription = NSLocalizedString("CORE_PLANK", comment: "core plank desc")
    let coreReversedPlank = NSLocalizedString("CORE_REVERSED_PLANK", comment: "reversed plank desc")
    
    
    let squatsDescription = NSLocalizedString("SQUATS", comment: "Squats desc")
    let lungesDescription = NSLocalizedString("LUNGES", comment: "Lunges desc")
    let barbelBoxSquatDescription = NSLocalizedString("BARBELL_BOX_SQUAT", comment: "Barbell box squat desc")
    let legExtensionDescription = NSLocalizedString("LEG_EXTENSION", comment: "Leg extension desc")
    let legCurlDescription = NSLocalizedString("LEG_CURL", comment: "Leg curl desc")
   
    
    let antioxidansDescription = NSLocalizedString("ANTIOXIDANTS", comment: "antioxidants desc")
    let proteinDescription = NSLocalizedString("PROTEIN", comment: "protein desc")
    let carbsDescription = NSLocalizedString("CARBS", comment: "carbs desc")
    let fatsDescription = NSLocalizedString("FATS", comment: "fats desc")
    let portionGuidlinesDescription = NSLocalizedString("PORTIONS", comment: "hand sized portions guidlines desc")
   
    
    let howToPlanYourTrainingCycleDescription = NSLocalizedString("HOW_TO_PLAN_YOUR_TRAINING_CYCLE", comment: "howToPlanYourTrainingCycle desc")
    let howToArrangeYourWorkoutDescription = NSLocalizedString("HOW_TO_ARRANGE_YOUR_WORKOUT", comment: "How to arrange your workout desc")
    let howToPlanYoyrRepsPerformingDescription = NSLocalizedString("HOW_TO_PLAN_YOUR_REPS_PERFORMING", comment: "How to plan your reps performing desc")
    let repetitionRangesDescription = NSLocalizedString("REPETITION_RANGES", comment: "repetition ranges desc")
    
    
    let whatIsCardiovascularFitnessDescription = NSLocalizedString("WHAT_IS_CARDIOVASCULAR_FITNESS", comment: "cardio desc")
    let mythsAboutCardioDescription = NSLocalizedString("MYTHS_ABOUT_CARDIO", comment: "myths about cardio desc")
    let testYourFitnessDescription = NSLocalizedString("TEST_YOUR_FITNESS", comment: "cooper test desc")
    let intervalTrainingDescription = NSLocalizedString("INTERVAL_TRAINING", comment: "interval training desc")
    let psychologyDescription = NSLocalizedString("PSYCHOLOGY", comment: "psychology & motivation desc")
    let hypertensionDescription = NSLocalizedString("HYPER", comment: "hypertension desc")
    let diabetesDescription = NSLocalizedString("DIABETES", comment: "diabetes desc")
    
    
    let findYourBodyTypeDescription = NSLocalizedString("BODY_TYPES", comment: "find your body type desc")
    let introAnatomyDescription = NSLocalizedString("INTRO_ANATOMY", comment: "intro anatamy")
    let understandingMetabolismDescription = NSLocalizedString("UNDERSTANDING_METABOLISM", comment: "metabolism desc")
    let anatomyPhysiologyDescription = NSLocalizedString("ANATOMY_PHYSIOLOGY", comment: "anatomy physiology desc")
    let exerciseAndMetabolicResponseDescription = NSLocalizedString("EXERCISE_METABOLIC_RESPONSE", comment: "metabolic response desc")
    let energyMetabolismDescription = NSLocalizedString("ENERGY_METABOLISM", comment: "energy metabolism desc")
    let definitionsDescription = NSLocalizedString("DEFINITIONS", comment: "key terms desc")
    
    
    let strengthDescription = NSLocalizedString("STRENGTH", comment: "strengthDesc")
    let hypertrophyDescription = NSLocalizedString("HYPERTROPHY", comment: "hypertrophyDesc")
    let fatlossDescription = NSLocalizedString("FATLOSS", comment: "fatlossDesc")
    let conditionigDescription = NSLocalizedString("CONDITIONING", comment: "conditioningDesc")
    let hourglassDescription = NSLocalizedString("HOURGLASS", comment: "hourglass desc")
    let rulerDescription = NSLocalizedString("RULER", comment: "ruler desc")
    let coneDesription = NSLocalizedString("CONE", comment: "cone desc")
    let spoonDescription = NSLocalizedString("SPOON", comment: "spoon desc")
    let byHypertensionDescription = NSLocalizedString("BY_HYPER", comment: "by condition hypertension desc")
    let byDiabetesDescription = NSLocalizedString("BY_DIABETES", comment: "by condition diabetes desc")
}


struct Recommendations {
    let cycleType = ["", "Strength", "Hypertrophy", "Fatloss", "Conditioning", "By body shape: Hourglass", "By body shape: Ruler", "By body shape: Cone", "By body shape: Spoon", "By condition: Hypertension", "By condition: Diabetes"]

}

struct About {
    let developedBy = "developed by:"
    let danijel = "Danijel Vasov"
    let link = "https://www.instagram.com/fit_by_danijel/"
    let recommendedApp = "don't forget to rate this app :]"
}

