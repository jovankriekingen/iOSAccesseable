//
//  MyAnnotation.swift
//  AccesSEAble
//
//  Created by mobapp13 on 17/03/2017.
//  Copyright © 2017 jo van kriekingen. All rights reserved.
//

import Foundation
import MapKit
import CoreData


public class MyAnnotation:NSObject, MKAnnotation
{
    public var coordinate: CLLocationCoordinate2D
    public var title: String?
    public var pinColor: UIColor
    public var object:NSManagedObject
    
    
    init(info:Info)
    {
        self.coordinate = CLLocationCoordinate2DMake(info.lat, info.lon)
        self.title = info.naam
        self.pinColor = UIColor.yellow
        self.object = info
    }
    
    init(log:Logies)
    {
        self.coordinate = CLLocationCoordinate2DMake(log.lat, log.lon)
        self.title = log.naam
        self.pinColor = UIColor.green
        self.object = log
    }
    
    init(poi:POI)
    {
        self.coordinate = CLLocationCoordinate2DMake(poi.lat, poi.lon)
        self.title = poi.naam
        self.pinColor = UIColor.red
        self.object = poi
    }
    
    init(reca:Reca)
    {
        self.coordinate = CLLocationCoordinate2DMake(reca.lat, reca.lon)
        self.title = reca.naam
        self.pinColor = UIColor.blue
        self.object = reca
    }
    
    init(san:Sanitair)
    {
        self.coordinate = CLLocationCoordinate2DMake(san.lat, san.lon)
        self.title = san.naam
        self.pinColor = UIColor.gray
        self.object = san
    }
    
    init(halte:Tram) {
        self.coordinate = CLLocationCoordinate2DMake(halte.stop_lat, halte.stop_lon)
        self.title = halte.naam
        self.pinColor = UIColor.black
        self.object = halte
    }
    
  //  init(vpp:VPP)
  //  {
  //      self.coordinate = CLLocationCoordinate2DMake(vpp.lat, vpp.lon)
  //      self.title = "parkeerplaats"
  //      self.pinColor = UIColor.cyan
  //      self.object = vpp
  //  }
    
    
    
}
