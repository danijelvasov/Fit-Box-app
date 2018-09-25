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
        }
        var delayCounter = 0.0
        for cell in cells {
            UIView.animate(withDuration: 1.0, delay: delayCounter * 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: UIViewAnimationOptions.curveEaseInOut, animations: {
                cell.transform = CGAffineTransform.identity
            }, completion: nil)
            delayCounter += 1.0
        }
    }
    
  
    
}


