//
//  Extension.swift
//  fitboxApp
//
//  Created by Danijel Vasov on 9/21/18.
//  Copyright © 2018 OSX. All rights reserved.
//

import UIKit


extension  UIView {
    
    func animateTable(tableView: UITableView) {
        tableView.reloadData()
        let cells = tableView.visibleCells
        
        for cell in cells {
            cell.transform = CGAffineTransform(translationX: (tableView.bounds.size.width) * -1, y: tableView.bounds.size.height)
            cell.alpha = 0
        }
        var delayCounter = 0.0
        for cell in cells {
            UIView.animate(withDuration: 1.2, delay: delayCounter * 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: UIView.AnimationOptions.curveEaseInOut, animations: {
                cell.transform = CGAffineTransform.identity
                cell.alpha = 1
            }, completion: nil)
            delayCounter += 1.0
        }
    }
    

  
    
    
  
    
}


