//
//  LowerBodyTableViewController.swift
//  fitboxApp
//
//  Created by Danijel Vasov on 9/13/18.
//  Copyright © 2018 OSX. All rights reserved.
//

import UIKit

class LowerBodyTableViewController: UITableViewController {

    let dataService = ExercisesLowerBody()
    
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
        return dataService.lowerBodyExercisesList.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "lowerBodyCell", for: indexPath) as! LowerBodyCell
        cell.lowerBodyImage.image = UIImage(named: dataService.lowerBodyImages[indexPath.row])
        cell.lowerBodyTitle.text = dataService.lowerBodyExercisesList[indexPath.row]
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToLowDetails" {
            let destinationVC = segue.destination as! DetailsViewController
            if let indexPath = tableView.indexPathForSelectedRow {
                destinationVC.titleData = dataService.lowerBodyExercisesList[indexPath.row] as String
                destinationVC.imageData = dataService.lowerBodyImages[indexPath.row] as String
            }
        }
    }


}
