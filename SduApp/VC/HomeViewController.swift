//
//  HomeViewController.swift
//  SduApp
//
//  Created by Магжан Имангазин on 10/22/20.
//  Copyright © 2020 Akzhol Imangazin. All rights reserved.
//

import UIKit
import SwiftSoup

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    
    var newsArr = [
        HomePage.init(myImageView: UIImage.init(named: "sdurector")!, myDescLabel: "NEWS", myTextLabel: "Rector of SDU was awarded the badge “Ybyray Altynsarin”"),
        HomePage.init(myImageView: UIImage.init(named: "sdured")!, myDescLabel: "", myTextLabel: "Red Hat Academy invites SDU students to a free webinar"),
        HomePage.init(myImageView: UIImage.init(named: "sdu13")!, myDescLabel: "", myTextLabel: "SDU graduate becomes Minister of digital development"),
        HomePage.init(myImageView: UIImage.init(named: "book")!, myDescLabel: "", myTextLabel: "“Booksharing” started in SDU"),
        HomePage.init(myImageView: UIImage.init(named: "eras")!, myDescLabel: "", myTextLabel: "Erasmus ALLVET project monitoring session"),
]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell") as? HomeCell
        cell?.myImageView.image = newsArr[indexPath.row].myImageView
        cell?.myDescLabel.text = newsArr[indexPath.row].myDescLabel
        cell?.myTextLabel.text = newsArr[indexPath.row].myTextLabel
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 190
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myTableView.deselectRow(at: indexPath, animated: true)
    }
    
}

