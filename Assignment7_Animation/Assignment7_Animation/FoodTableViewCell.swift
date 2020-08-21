//
//  FoodTableViewCell.swift
//  Assignment7_Animation
//
//  Created by Tomona Sako on 2020/05/25.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {

    @IBOutlet var foodNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
