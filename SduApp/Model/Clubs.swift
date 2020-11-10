//
//  Clubs.swift
//  SduApp
//
//  Created by Магжан Имангазин on 10/23/20.
//  Copyright © 2020 Akzhol Imangazin. All rights reserved.
//

import Foundation
import UIKit

class Clubs {
    var clubsLabel: String?
    var clubsImageView: UIImage?
    init(clubsLabel: String, clubsImageView: UIImage) {
        self.clubsImageView = clubsImageView
        self.clubsLabel = clubsLabel
    }
}
