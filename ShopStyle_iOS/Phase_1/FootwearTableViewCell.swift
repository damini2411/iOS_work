//
//  TableViewCell.swift
//  Phase_1
//
//  Created by Damini Dholakiya on 2017-07-04.
//  Copyright © 2017 Damini Dholakiya. All rights reserved.
//

import UIKit

class FootwearTableViewCell: UITableViewCell {

    @IBOutlet weak var imgFootwear: UIImageView!
    
    @IBOutlet weak var lblFootwearName: UILabel!
    
    @IBOutlet weak var lblFootwearPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
