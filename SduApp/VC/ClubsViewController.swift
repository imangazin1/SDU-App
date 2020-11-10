//
//  ClubsViewController.swift
//  SduApp
//
//  Created by Магжан Имангазин on 10/22/20.
//  Copyright © 2020 Akzhol Imangazin. All rights reserved.
//

import UIKit

class ClubsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    var clubsArr = [
        Clubs.init(clubsLabel: "Sport Club", clubsImageView: UIImage.init(named: "sport")!),
        Clubs.init(clubsLabel: "Event", clubsImageView: UIImage.init(named: "event")!),
        Clubs.init(clubsLabel: "IT Club", clubsImageView: UIImage.init(named: "it")!),
        Clubs.init(clubsLabel: "Shapagat", clubsImageView: UIImage.init(named: "shapagat")!),
        Clubs.init(clubsLabel: "Red Crescent", clubsImageView: UIImage.init(named: "red")!),
        Clubs.init(clubsLabel: "Art Club", clubsImageView: UIImage.init(named: "art")!),
        Clubs.init(clubsLabel: "MMDance", clubsImageView: UIImage.init(named: "mmd")!),
        Clubs.init(clubsLabel: "Mountain Kings", clubsImageView: UIImage.init(named: "moun")!),
        Clubs.init(clubsLabel: "Music Club", clubsImageView: UIImage.init(named: "music")!),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.myTableView.delegate = self
        self.myTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clubsArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ClubsCell") as? ClubsCell
        cell?.myLabel.text = clubsArr[indexPath.row].clubsLabel
        cell?.myImageView.image = clubsArr[indexPath.row].clubsImageView
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 190
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myTableView.deselectRow(at: indexPath, animated: true)
    }
}
