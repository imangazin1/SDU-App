//
//  GalleryViewController.swift
//  SduApp
//
//  Created by Магжан Имангазин on 10/23/20.
//  Copyright © 2020 Akzhol Imangazin. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var myCollection: UICollectionView!
    
    var galleryArr: [UIImage] = [
        UIImage.init(named: "1")!,
        UIImage.init(named: "2")!,
        UIImage.init(named: "3")!,
        UIImage.init(named: "4")!,
        UIImage.init(named: "5")!,
        UIImage.init(named: "6")!,
        UIImage.init(named: "7")!,
        UIImage.init(named: "8")!
    ]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return galleryArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "galleryCell", for: indexPath) as! GalleryCell
        cell.myImageView.image = galleryArr[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width/2 - 16, height: 250)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        myCollection.delegate = self
        myCollection.dataSource = self
        // Do any additional setup after loading the view.
    }

}
