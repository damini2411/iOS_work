//
//  ClothesTableViewCell.swift
//  Phase_1
//
//  Created by Damini Dholakiya on 2017-07-03.
//  Copyright © 2017 Damini Dholakiya. All rights reserved.
//

import UIKit

class ClothesTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var imgproduct: UIImageView!
    
    @IBOutlet weak var lblProductName: UILabel!
    
    @IBOutlet weak var lblProductPrice: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
