//
//  poiVppDAO.swift
//  AccesSEAble
//
//  Created by Lise De Ridder on 15/03/17.
//  Copyright © 2017 jo van kriekingen. All rights reserved.
//

import Foundation

import CoreData


public class poiDAO {
    
    func getPOILijst() -> [POI]
    {
        let req = NSFetchRequest<NSFetchRequestResult>.init(entityName: "POI")
        
        do {
            let pointsOfInterest = try persistentContainer.viewContext.fetch(req) as! [POI]
            return pointsOfInterest
        } catch {
            print("Opvragen restaurants niet mogelijk!")
        }
        
        return req
    }
    
    
    
    
    func parsePOI (context:NSManagedObjectContext)
    {
        
        let url = URL(string: "http://web10.weopendata.com/measurements/poi.json")
        do {
            
            let poiData = try Data(contentsOf: url!)
            let poiArray:NSArray = try JSONSerialization.jsonObject(with: poiData) as! NSArray
            
            
            for item in poiArray {
                
                let poiMember:NSDictionary = item as! NSDictionary
                
                let rowPOI = POI(context: context)
                
                
                rowPOI.id_westkans = poiMember.value(forKey: "ID_WESTKANS") as? String
                rowPOI.id_westtoer = poiMember.value(forKey: "ID_WESTTOER") as? String
                rowPOI.type = poiMember.value(forKey: "TYPE") as? String
                rowPOI.subtype = poiMember.value(forKey: "SUBTYPE") as? String
                rowPOI.naam = poiMember.value(forKey: "NAAM") as? String
                rowPOI.adres_straat = poiMember.value(forKey: "ADRES_STRAAT") as? String
                rowPOI.adres_nr = poiMember.value(forKey: "ADRES_NR") as? String
                rowPOI.postcode = poiMember.value(forKey: "PNR") as? String
                rowPOI.gemeente = poiMember.value(forKey: "GEMEENTE") as? String
                rowPOI.deelgemeente = poiMember.value(forKey: "DEELGEMEENTE") as? String
                rowPOI.regio = poiMember.value(forKey: "REGIO") as? String
                rowPOI.tel = poiMember.value(forKey: "TEL") as? String
                rowPOI.fax = poiMember.value(forKey: "FAX") as? String
                rowPOI.web = poiMember.value(forKey: "WEB") as? String
                rowPOI.mail = poiMember.value(forKey: "MAIL") as? String
                rowPOI.openingsuren = poiMember.value(forKey: "openingsuren") as? String
                rowPOI.score = poiMember.value(forKey: "SCORE") as? String
                rowPOI.voorzieningen_blinden_doven = poiMember.value(forKey: "voorzieningen_blinden_doven") as? String
                rowPOI.parking_score = poiMember.value(forKey: "parking_score") as? String
                rowPOI.parking_aanduiding_verkeersbord = poiMember.value(forKey: "parking_aanduiding_verkeersbord") as? String
                rowPOI.parking_aanduiding_omlijning = poiMember.value(forKey: "parking_aanduiding_omlijning") as? String
                rowPOI.parking_aanduiding_zichtbaar = poiMember.value(forKey: "parking_aanduiding_zichtbaar") as? String
                rowPOI.parking_aanduiding_score = poiMember.value(forKey: "parking_aanduiding_score") as? String
                rowPOI.parking_orientatie = poiMember.value(forKey: "parking_orientatie") as? String
                rowPOI.parking_breedte_data = poiMember.value(forKey: "parking_breedte_data") as? String
                rowPOI.parking_lengte_data = poiMember.value(forKey: "parking_lengte_data") as? String
                rowPOI.parking_breedte_tekst = poiMember.value(forKey: "parking_breedte_tekst") as? String
                rowPOI.parking_lengte_tekst = poiMember.value(forKey: "parking_lengte_tekst") as? String
                rowPOI.parking_breedte_uitstapzone_tekst = poiMember.value(forKey: "parking_breedte_uitstapzone_tekst") as? String
                rowPOI.parking_lengte_uitstapzone_tekst = poiMember.value(forKey: "parking_lengte_uitstapzone_tekst") as? String
                rowPOI.parking_ondergrond_materiaal = poiMember.value(forKey: "parking_ondergrond_materiaal") as? String
                
                rowPOI.lat = poiMember.value(forKey: "LAT") as? String
                rowPOI.lon = poiMember.value(forKey: "LON") as? String
                
                
            }
        } catch  {
            print("parse error POI")
        }
    }
    
    
        
        
}


public class vppDAO {
    
    func parseVPP (context:NSManagedObjectContext)
    {
        
        let url = URL(string: "http://web10.weopendata.com/measurements/vpp.json")
        do {
            
            let vppData = try Data(contentsOf: url!)
            let vppArray:NSArray = try JSONSerialization.jsonObject(with: vppData) as! NSArray
            
            
            for item in vppArray {
                
                let vppMember:NSDictionary = item as! NSDictionary
                
                let rowVPP = VPP(context: context)
                
                
                rowVPP.id_westkans = vppMember.value(forKey: "ID_WESTKANS") as? String
                rowVPP.adres_straat = vppMember.value(forKey: "ADRES_STRAAT") as? String
                rowVPP.adres_nr = vppMember.value(forKey: "ADRES_NR") as? String
                rowVPP.postcode = vppMember.value(forKey: "POSTCODE") as? String
                rowVPP.gemeente = vppMember.value(forKey: "GEMEENTE") as? String
                rowVPP.·lat = vppMember.value(forKey: "LAT") as? String
                rowVPP.lon = vppMember.value(forKey: "LON") as? String
                rowVPP.deelgemeente = vppMember.value(forKey: "DEELGEMEENTE") as? String
                rowVPP.regio = vppMember.value(forKey: "REGIO") as? String
                rowVPP.parking_aanduiding_verkeersbord = vppMember.value(forKey: "parking_aanduiding_verkeersbord") as? String
                rowVPP.parking_aanduiding_omlijning = vppMember.value(forKey: "parking_aanduiding_omlijning") as? String
                rowVPP.parking_aanduiding_score = vppMember.value(forKey: "parking_aanduiding_score") as? String
                rowVPP.parking_orientatie = vppMember.value(forKey: "parking_orientatie") as? String
                rowVPP.parking_breedte_data = vppMember.value(forKey: "parking_breedte_data") as? String
                rowVPP.parking_lengte_data = vppMember.value(forKey: "parking_lengte_data") as? String
                rowVPP.parking_ondergrond_materiaal = vppMember.value(forKey: "parking_ondergrond_materiaal") as? String
                rowVPP.parking_ondergrond_materiaal_score = vppMember.value(forKey: "parking_ondergrond_materiaal_score") as? String
                rowVPP.parking_breedte_tekst = vppMember.value(forKey: "parking_breedte_tekst") as? String
                rowVPP.parking_lengte_tekst = vppMember.value(forKey: "parking_lengte_tekst") as? String
                rowVPP.parking_breedte_uitstapzone_tekst = vppMember.value(forKey: "parking_breedte_uitstapzone_tekst") as? String
                rowVPP.parking_lengte_uitstapzone_tekst = vppMember.value(forKey: "parking_lengte_uitstapzone_tekst") as? String
                rowVPP.url_picture_main = vppMember.value(forKey: "url_picture_main") as? String
                
            }
        } catch  {
            print("parse error VPP")
        }
    }
}

