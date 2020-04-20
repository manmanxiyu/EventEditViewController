//
//  LYKXTimeDisplayTableViewCell.swift
//  Practise
//
//  Created by 周伟 on 2020/4/18.
//  Copyright © 2020 周伟. All rights reserved.
//

import UIKit

class LYKXTimeDisplayTableViewCell: UITableViewCell {

    @IBOutlet weak var yearMonthLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
