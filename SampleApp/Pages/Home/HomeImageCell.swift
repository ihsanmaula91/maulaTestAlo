//
//  HomeImageCell.swift
//  SampleApp
//
//  Created by ihsanmaul on 9/10/18.
//  Copyright © 2018 MyMacbook. All rights reserved.
//

import UIKit

class HomeImageCell: UITableViewCell {

    @IBOutlet weak var contentImageView: UIView!
    @IBOutlet weak var iconImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        contentImageView.layer.borderWidth = 1
        contentImageView.layer.borderColor = UIColor(hexString: "2a58c7").cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
