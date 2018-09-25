//
//  UpperBodyTableViewController.swift
//  fitboxApp
//
//  Created by OSX on 6/14/18.
//  Copyright © 2018 OSX. All rights reserved.
//

import UIKit

class UpperBodyTableViewController: UITableViewController {
    
   let dataService = ExercisesUpperBody()
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       tableView.animateTable(tableView: tableView)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataService.upperBodyExercisesList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! UpperBodyCell
        cell.cellTittle.text = dataService.upperBodyExercisesList[indexPath.row]
        cell.cellImageView.image = UIImage(named: dataService.upperBodyimages[indexPath.row])
        return cell
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails" {
            let dvc = segue.destination as! DetailsViewController
            if let indexPath = tableView.indexPathForSelectedRow {
                dvc.imageData = dataService.upperBodyimages[indexPath.row] as String
                dvc.titleData = dataService.upperBodyExercisesList[indexPath.row] as String
        }
    }
}

}
