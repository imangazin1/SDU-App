//
//  FacultiesCell.swift
//  SduApp
//
//  Created by Магжан Имангазин on 10/22/20.
//  Copyright © 2020 Akzhol Imangazin. All rights reserved.
//

import UIKit

class FacultiesCell: UITableViewCell {

    @IBOutlet weak var facultyLabel: UILabel!
    @IBOutlet weak var facultyImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
