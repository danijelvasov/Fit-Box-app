//
//  UpperBodyCell.swift
//  fitboxApp
//
//  Created by OSX on 6/14/18.
//  Copyright © 2018 OSX. All rights reserved.
//

import UIKit

class UpperBodyCell: UITableViewCell {
    
    
    
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellTittle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
