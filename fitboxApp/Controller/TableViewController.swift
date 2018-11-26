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
    let food = Food()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       tableView.animateTable(tableView: tableView)
        navigationItem.title = categoryName ?? ""
    }

    override func viewDidLoad() {
        super.viewDidLoad()
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
        case "Food":
            return food.foodList.count
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
            
        case "Food":
            guard let cellFood = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? ExerciseCell else {return UITableViewCell()}
            cellFood.cellTittle.text = food.foodList[indexPath.row]
            cellFood.cellImageView.image = UIImage(named: food.foodImages[indexPath.row])
            return cellFood
            
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
                    
                    case "Food":
                        dvc.imageData = food.foodImages[indexPath.row] as String
                        dvc.titleData = food.foodList[indexPath.row] as String
                    
                default:
                    return
                }
            }
        }
    }
}



