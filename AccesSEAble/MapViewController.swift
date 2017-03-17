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

class MapViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapview: MKMapView!
    
    var locationManager = CLLocationManager.init()
    
    let Info = DAO.mainDAO.getAlleInfoKantoren()
    let Loge = DAO.mainDAO.getAlleLogies()
    let POI = DAO.mainDAO.getAllePOI()
    let ReCa = DAO.mainDAO.getAlleReca()
    let Sanitair = DAO.mainDAO.getAlleSanitair()
    let Haltes = DAO.mainDAO.getAlleTram()
    let VPP = DAO.mainDAO.getAlleVPP()
    
    var items:[String:Bool] = ["Reca":true, "Toilet":true, "Museum":true, "Info":true, "Hotel":true, "Parking":true, "Halte": true]
    
    //elke keer scherm eerste keer wordt geladen
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestWhenInUseAuthorization()
        createRegion()
        createAnnotations()
    }
    
    //elke keer als gebruiker terugkeert naar scherm
    func viewDidAppear(){
        createRegion()
        createAnnotations()
    }
    
    //pins vd locaties op map toevoegen
    func createAnnotations(){
        
        if (items["Info"])!{
            for info in Info{
                let annotation1:MyAnnotation = MyAnnotation.init(info: info)
                mapview.addAnnotation(annotation1)
            }
        }
        
        if (items["Hotel"])!{
            for log in Loge{
                let annotation2:MyAnnotation = MyAnnotation.init(log: log)
                mapview.addAnnotation(annotation2)
            }
        }
        
        if (items["Museum"])!{
            for poi in POI{
                let annotation3:MyAnnotation = MyAnnotation.init(poi: poi)
                mapview.addAnnotation(annotation3)
            }
        }
        
        if (items["Reca"])!
        {
            for reca in ReCa{
                let annotation4:MyAnnotation = MyAnnotation.init(reca: reca)
                mapview.addAnnotation(annotation4)
            }
        }
        
        if (items["Toilet"])!
        {
            for san in Sanitair{
                let annotation5:MyAnnotation = MyAnnotation.init(san: san)
                mapview.addAnnotation(annotation5)
            }
        }
        
        if (items["Halte"])!{
            for halte in Haltes{
                let annotation6:MyAnnotation = MyAnnotation.init(halte: halte)
                mapview.addAnnotation(annotation6)
            }
        }
        //if (items["Parking"])!{
        //    for vpp in VPP{
        //        let annotation7:MyAnnotation = MyAnnotation.init(vpp: vpp)
        //        mapview.addAnnotation(annotation7)
        //    }
        //}
    }
    
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        //is annotation een POI
        //if let -> kortere schrijfwijze om variabele te initialiseren en direct check of gelukt
        if let pin = annotation as? MyAnnotation
        {
            //we willen layout hergebruiken indien het bestaat
            //-> niet voor elke pin opnieuw laten tekenen
            let identifier = "pin"
            var pinView: MKPinAnnotationView
            
            //check of pinView al bestaat
            if let dequedView = mapview.dequeueReusableAnnotationView(withIdentifier: identifier) as! MKPinAnnotationView?
            {
                //layout bestaat al -> hergebruiken en annotatie instellen
                dequedView.annotation = pin
                pinView = dequedView
            }
            else
            {
                //layout bestaat nog niet -> aanmaken
                pinView = MKPinAnnotationView.init(annotation: pin, reuseIdentifier: identifier)
                //instellen pin
                pinView.canShowCallout = true
                
                let button = UIButton.init(type: .infoDark)
                pinView.rightCalloutAccessoryView = button
            }
            
            //klaar met annotatie, op kaart zetten
            pinView.pinTintColor = pin.pinColor
            return pinView
        }
        //geen van onze annotaties, niet weergeven
        return nil
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        //segue aanmaken naar het detailLocatieScherm
        let pin = view.annotation as? MyAnnotation
        performSegue(withIdentifier: "kaartNaarDetail", sender: pin?.object)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let view = sender as! MKPinAnnotationView
        let detailScherm = segue.destination as! DetailViewController
        detailScherm.object = (sender as! NSManagedObject?)!
    }
    
    func checkLocationAuthorization(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        
        switch status {
        case .authorizedWhenInUse: mapview.showsUserLocation = true
        locationManager.startUpdatingLocation()
        case .authorizedAlways: mapview.showsUserLocation = true
        locationManager.startUpdatingLocation()
        case .denied: mapview.showsUserLocation = false
        print("computer says no")
        default: break
        }
    }
    
    
    //regio om op te focussen
    func createRegion()     {
        //begin met middelpunt aan de kust
        let center = CLLocationCoordinate2DMake(51.2220, 2.9288)
        //spanweide: bepalen hoeveel inzoomen
        let span = MKCoordinateSpan.init(latitudeDelta: 0.09, longitudeDelta: 0.09)
        let region = MKCoordinateRegion.init(center: center, span: span)
        //aanspreken van middelpunt op kaart
        mapview.region = region
    }
    
    //maptypes instellen
    @IBAction func mapTypeChosen(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0: mapview.mapType = .standard
        case 1: mapview.mapType = .satellite
        case 2: mapview.mapType = .hybrid
        default:break
        }
    }
    
    
}
