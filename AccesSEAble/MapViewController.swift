//
//  MapViewController.swift
//  AccesSEAble
//
//  Created by mobapp10 on 13/03/17.
//  Copyright © 2017 jo van kriekingen. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    @IBOutlet weak var mapView: MKMapView!
    
    
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
