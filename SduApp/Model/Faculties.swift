//
//  Faculties.swift
//  SduApp
//
//  Created by Магжан Имангазин on 10/22/20.
//  Copyright © 2020 Akzhol Imangazin. All rights reserved.
//

import Foundation
import UIKit

class Faculties {
    var facultyLabel: String?
    var facultyImageView: UIImage?
    var myText: String?
    var myImageView: UIImage?
    init(facultyLabel: String, facultyImageView: UIImage, myText: String, myImageView: UIImage) {
        self.facultyLabel = facultyLabel
        self.facultyImageView = facultyImageView
        self.myText = myText
        self.myImageView = myImageView
    }
}
