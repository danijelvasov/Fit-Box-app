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
    let dataService = Exercises()
    
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
            return dataService.upperBodyExercisesList.count
        case "Lower Body Exercises":
            return dataService.lowerBodyExercisesList.count
        default:
            return 1
        }
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch categoryName {
        case "Upper Body Exercises":
            guard let cellUpper = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? ExerciseCell else {return UITableViewCell()}
            cellUpper.cellTittle.text = dataService.upperBodyExercisesList[indexPath.row]
            cellUpper.cellImageView.image = UIImage(named: dataService.upperBodyimages[indexPath.row])
            return cellUpper
            
        case "Lower Body Exercises":
            guard let cellLower = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? ExerciseCell else {return UITableViewCell()}
            cellLower.cellTittle.text = dataService.lowerBodyExercisesList[indexPath.row]
            cellLower.cellImageView.image = UIImage(named: dataService.lowerBodyImages[indexPath.row])
            return cellLower
            
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
                        dvc.imageData = dataService.upperBodyimages[indexPath.row] as String
                        dvc.titleData = dataService.upperBodyExercisesList[indexPath.row] as String
                
                    case "Lower Body Exercises":
                        dvc.imageData = dataService.lowerBodyImages[indexPath.row] as String
                        dvc.titleData = dataService.lowerBodyExercisesList[indexPath.row] as String
                default:
                    return
                }
            }
        }
    }
}



