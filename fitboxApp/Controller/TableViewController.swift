//
//  UpperBodyTableViewController.swift
//  fitboxApp
//
//  Created by OSX on 6/14/18.
//  Copyright © 2018 OSX. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
   
    var categoryName : String?
    let exercises = Exercises()
    let nutrition = Nutrition()
    let programs = Programs()
    let health = Health()
    let anatomy = Anatomy()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.backgroundView = UIImageView(image: UIImage(named: "backBlueFinal"))
       tableView.animateTable(tableView: tableView)
        navigationItem.title = categoryName ?? ""
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch categoryName {
        case "Upper Body Exercises":
            return exercises.upperBodyExercisesList.count
        case "Lower Body Exercises":
            return exercises.lowerBodyExercisesList.count
        case "Nutrition":
            return nutrition.nutritionList.count
        case "Plan your workout":
            return programs.programList.count
        case "Health":
            return health.healthList.count
        case "Anatomy Basics":
            return anatomy.anatomyList.count
        default:
            return 1
        }
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch categoryName {
        case "Upper Body Exercises":
            guard let cellUpper = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? ExerciseCell else {return UITableViewCell()}
           
            cellUpper.cellTittle.text = exercises.upperBodyExercisesList[indexPath.row]
            cellUpper.cellImageView.image = UIImage(named: exercises.upperBodyimages[indexPath.row])
            return cellUpper
            
        case "Lower Body Exercises":
            guard let cellLower = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? ExerciseCell else {return UITableViewCell()}
            
            cellLower.cellTittle.text = exercises.lowerBodyExercisesList[indexPath.row]
            cellLower.cellImageView.image = UIImage(named: exercises.lowerBodyImages[indexPath.row])
            return cellLower
            
        case "Nutrition":
            guard let cellFood = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? ExerciseCell else {return UITableViewCell()}
           
            cellFood.cellTittle.text = nutrition.nutritionList[indexPath.row]
            cellFood.cellImageView.image = UIImage(named: nutrition.nutritionImages[indexPath.row])
            return cellFood
            
        case "Plan your workout":
            guard let cellProgram = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? ExerciseCell else {return UITableViewCell()}
            
            cellProgram.cellTittle.text = programs.programList[indexPath.row]
            cellProgram.cellImageView.image = UIImage(named: programs.programImages[indexPath.row])
            return cellProgram
            
        case "Health":
            guard let cellCardio = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? ExerciseCell else {return UITableViewCell()}
            
            cellCardio.cellTittle.text = health.healthList[indexPath.row]
            cellCardio.cellImageView.image = UIImage(named: health.healthImages[indexPath.row])
            return cellCardio
            
        case "Anatomy Basics":
            guard let cellAnatomy = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? ExerciseCell else {return UITableViewCell()}
            
            cellAnatomy.cellTittle.text = anatomy.anatomyList[indexPath.row]
            cellAnatomy.cellImageView.image = UIImage(named: anatomy.anatomyImages[indexPath.row])
            return cellAnatomy
            
        default:
             return UITableViewCell()
        }
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails" {
            let dvc = segue.destination as! DetailsViewController
            if let indexPath = tableView.indexPathForSelectedRow {
                switch categoryName  {
                    case "Upper Body Exercises":
                      
                        dvc.imageData = exercises.upperBodyimages[indexPath.row] as String
                        dvc.titleData = exercises.upperBodyExercisesList[indexPath.row] as String
                
                    case "Lower Body Exercises":
                        
                        dvc.imageData = exercises.lowerBodyImages[indexPath.row] as String
                        dvc.titleData = exercises.lowerBodyExercisesList[indexPath.row] as String
                    
                    case "Nutrition":
                        
                        dvc.imageData = nutrition.nutritionImages[indexPath.row] as String
                        dvc.titleData = nutrition.nutritionList[indexPath.row] as String
                    
                case "Plan your workout":
                    
                    dvc.imageData = programs.programImages[indexPath.row] as String
                    dvc.titleData = programs.programList[indexPath.row] as String
                    
                case "Health":
                 
                    dvc.imageData = health.healthImages[indexPath.row] as String
                    dvc.titleData = health.healthList[indexPath.row] as String
                    
                case "Anatomy Basics":
                  
                    dvc.imageData = anatomy.anatomyImages[indexPath.row] as String
                    dvc.titleData = anatomy.anatomyList[indexPath.row] as String
                    
                default:
                    return
                }
            }
        }
    }
}



