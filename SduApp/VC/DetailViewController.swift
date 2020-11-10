//
//  DetailViewController.swift
//  SduApp
//
//  Created by Магжан Имангазин on 10/23/20.
//  Copyright © 2020 Akzhol Imangazin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var text: String?
    var image: UIImage?
    @IBOutlet weak var myText: UITextView!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myText.text = text
        myImageView.image = image
    }

    @IBAction func cancelAction(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
