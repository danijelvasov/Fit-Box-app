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
    var isUpperSelected : Bool?
    let dataUpper = ExercisesUpperBody()
    let dataLower = ExercisesLowerBody()
    
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
        switch isUpperSelected {
        case true:
            return dataUpper.upperBodyExercisesList.count
        case false:
            return dataLower.lowerBodyExercisesList.count
        default:
            return 1
        }
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch isUpperSelected {
        case true:
            guard let cellUpper = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? ExerciseCell else {return UITableViewCell()}
            cellUpper.cellTittle.text = dataUpper.upperBodyExercisesList[indexPath.row]
            cellUpper.cellImageView.image = UIImage(named: dataUpper.upperBodyimages[indexPath.row])
            return cellUpper
            
        case false:
            guard let cellLower = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? ExerciseCell else {return UITableViewCell()}
            cellLower.cellTittle.text = dataLower.lowerBodyExercisesList[indexPath.row]
            cellLower.cellImageView.image = UIImage(named: dataLower.lowerBodyImages[indexPath.row])
            return cellLower
            
        default:
             return UITableViewCell()
        }
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails" {
            let dvc = segue.destination as! DetailsViewController
            if let indexPath = tableView.indexPathForSelectedRow {
                if isUpperSelected! {
                dvc.imageData = dataUpper.upperBodyimages[indexPath.row] as String
                dvc.titleData = dataUpper.upperBodyExercisesList[indexPath.row] as String
                } else {
                    dvc.imageData = dataLower.lowerBodyImages[indexPath.row] as String
                    dvc.titleData = dataLower.lowerBodyExercisesList[indexPath.row] as String
                }
            }
            }
        }

    
    
    
    
}
