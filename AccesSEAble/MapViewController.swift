//
//  MapViewController.swift
//  AccesSEAble
//
//  Created by mobapp10 on 13/03/17.
//  Copyright © 2017 jo van kriekingen. All rights reserved.
//

import UIKit
import MapKit
import CoreData

class MapViewController: UIViewController, MKMapViewDelegate{
    
    var item:[NSManagedObject]?
    var locationManager = CLLocationManager()
    
    
    @IBOutlet weak var mapView: MKMapView!
    
    func checkLocationAuthorizationStatus()
    {
        if CLLocationManager.authorizationStatus() == .authorizedAlways
        {
            mapView.showsUserLocation = true
        } else {
            
            locationManager.requestWhenInUseAuthorization()
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let mapCoord = CLLocationCoordinate2DMake(51.026811, 3.128074)
        let mapSpan = MKCoordinateSpanMake(1,1)
        let centerRegion = MKCoordinateRegionMake(mapCoord, mapSpan)
        
        mapView.region = centerRegion

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        //Update de locatie van de gebruiker

    
}
