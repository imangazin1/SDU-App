//
//  ContactsViewController.swift
//  SduApp
//
//  Created by Магжан Имангазин on 10/22/20.
//  Copyright © 2020 Akzhol Imangazin. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ContactsViewController: UIViewController {

    @IBOutlet weak var myMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let location = CLLocationCoordinate2DMake(43.12, 76.37)
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let region = MKCoordinateRegion(center: location, span: span)
        myMap.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "SDU"
        annotation.subtitle = "Kaskelen"
        myMap.addAnnotation(annotation)
    }
    

}
