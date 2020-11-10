//
//  NewsCell.swift
//  SduApp
//
//  Created by Магжан Имангазин on 10/20/20.
//  Copyright © 2020 Akzhol Imangazin. All rights reserved.
//

import UIKit

class HomeCell: UITableViewCell {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myDescLabel: UILabel!
    @IBOutlet weak var myTextLabel: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
