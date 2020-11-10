//
//  NewsPage.swift
//  SduApp
//
//  Created by Магжан Имангазин on 10/20/20.
//  Copyright © 2020 Akzhol Imangazin. All rights reserved.
//

import Foundation
import UIKit

class HomePage {
    var myImageView: UIImage?
    var myDescLabel: String?
    var myTextLabel: String?
    
    init(myImageView: UIImage, myDescLabel: String, myTextLabel: String) {
        self.myImageView = myImageView
        self.myDescLabel = myDescLabel
        self.myTextLabel = myTextLabel
    }
}
