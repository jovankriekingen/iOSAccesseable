//
//  JSONParser.swift
//  AccesSEAble
//
//  Created by mobapp13 on 16/03/17.
//  Copyright © 2017 jo van kriekingen. All rights reserved.
//

import Foundation
import CoreData

public class JSONParser{

    func parseTramhaltes( context:NSManagedObjectContext)
    {
        //waar staan de gegevens
        let url = URL(string: "http://web10.weopendata.com/measurements/tram")
        //exceptions mogelijk bv. geen internet
        do {
            //data binnentrekken van url en in array opslaan
            let tramData = try Data(contentsOf: url!)
            let tramArray:NSArray = try JSONSerialization.jsonObject(with: tramData) as! NSArray
            
            //elk item in array overlopen om gegevens uit te halen
            for item in tramArray {
                
                let infoObject:NSDictionary = item as! NSDictionary
                //entiteit aanmaken, context = verwijzing naar waar opgeslaan
                let volgendeTramHalte = Tram(context: context)
                
                //strings omzetten waar nodig
                let stop_idStr = infoObject.value(forKey: "stop_id") as! String
                volgendeTramHalte.stop_id =  stop_idStr
                
                volgendeTramHalte.naam = infoObject.value(forKey: "naam") as? String
                //rest keys nog niet geparset
            }
        } catch  {
            print("Fout bij binnenhalen van de data")
        }
    }
    
    func parseDijken( context:NSManagedObjectContext)
    {
        //waar staan de gegevens
        let url = URL(string: "http://web10.weopendata.com/measurements/dijk")
        do {
            let dijkData = try Data(contentsOf: url!)
            let dijkArray:NSArray = try JSONSerialization.jsonObject(with: dijkData ) as! NSArray
            
            for item in dijkArray{
                
                let dijkObject:NSDictionary = item as! NSDictionary
                let volgendeDijk = Dijk(context: context)
                
                let adres_locatieStr = dijkObject.value(forKey: "adres_locatie") as! String
                volgendeDijk.adres_locatie = adres_locatieStr
            
                volgendeDijk.naam = dijkObject.value(forKey: "naam") as? String
            }
        } catch  {
            print("Fout bij binnehalen van de data")
        }
    }
    
    func parseInfos( context:NSManagedObjectContext)
    {
        //waar staan de gegevens
        let url = URL(string: "http://web10.weopendata.com/measurements/info")
        //exceptions mogelijk bv. geen internet
        do {
            //data binnentrekken van url en in array opslaan
            let infoData = try Data(contentsOf: url!)
            let infoArray:NSArray = try JSONSerialization.jsonObject(with: infoData) as! NSArray
            
            //elk item in array overlopen om gegevens uit te halen
            for item in infoArray {
                
                let infoObject:NSDictionary = item as! NSDictionary
                //entiteit aanmaken, context = verwijzing naar waar opgeslaan
                let volgendeInfo = Info(context: context)
                
                //strings omzetten waar nodig
                let adres_straatStr = infoObject.value(forKey: "adres_straat") as! String
                volgendeInfo.adres_straat =  adres_straatStr
                
                volgendeInfo.naam = infoObject.value(forKey: "naam") as? String
                //rest keys nog niet geparset
            }
        } catch  {
            print("Fout bij binnenhalen van de data")
        }
    }
    
    func parseLogies( context:NSManagedObjectContext)
    {
        //waar staan de gegevens
        let url = URL(string: "http://web10.weopendata.com/measurements/logies")
        //exceptions mogelijk bv. geen internet
        do {
            //data binnentrekken van url en in array opslaan
            let logiesData = try Data(contentsOf: url!)
            let logiesArray:NSArray = try JSONSerialization.jsonObject(with: logiesData) as! NSArray
            
            //elk item in array overlopen om gegevens uit te halen
            for item in logiesArray {
                
                let logiesObject:NSDictionary = item as! NSDictionary
                //entiteit aanmaken, context = verwijzing naar waar opgeslaan
                let volgendeLogie = Logies(context: context)
                
                //strings omzetten waar nodig
                let idStr = logiesObject.value(forKey: "adres_straat") as! String
                volgendeLogie.adres_straat =  idStr
                
                volgendeLogie.naam = logiesObject.value(forKey: "naam") as? String
                //rest keys nog niet geparset
            }
        } catch  {
            print("Fout bij binnenhalen van de data")
        }
    }
    
    func parsePois( context:NSManagedObjectContext)
    {
        //waar staan de gegevens
        let url = URL(string: "http://web10.weopendata.com/measurements/poi")
        //exceptions mogelijk bv. geen internet
        do {
            //data binnentrekken van url en in array opslaan
            let poiData = try Data(contentsOf: url!)
            let poiArray:NSArray = try JSONSerialization.jsonObject(with: poiData) as! NSArray
            
            //elk item in array overlopen om gegevens uit te halen
            for item in poiArray {
                
                let poiObject:NSDictionary = item as! NSDictionary
                //entiteit aanmaken, context = verwijzing naar waar opgeslaan
                let volgendePOI = POI(context: context)
                
                //strings omzetten waar nodig
                let id_externStr = poiObject.value(forKey: "id_extern") as! String
                volgendePOI.id_extern =  id_externStr
                
                volgendePOI.naam = poiObject.value(forKey: "naam") as? String
                //rest keys nog niet geparset
            }
        } catch  {
            print("Fout bij binnenhalen van de data")
        }
    }
    
    func parseRecas( context:NSManagedObjectContext)
    {
        //waar staan de gegevens
        let url = URL(string: "http://web10.weopendata.com/measurements/reca")
        //exceptions mogelijk bv. geen internet
        do {
            //data binnentrekken van url en in array opslaan
            let recaData = try Data(contentsOf: url!)
            let recaArray:NSArray = try JSONSerialization.jsonObject(with: recaData) as! NSArray
            
            //elk item in array overlopen om gegevens uit te halen
            for item in recaArray {
                
                let recaObject:NSDictionary = item as! NSDictionary
                //entiteit aanmaken, context = verwijzing naar waar opgeslaan
                let volgendeReca = Reca(context: context)
                
                //strings omzetten waar nodig
                let adres_straatStr = recaObject.value(forKey: "adres_straat") as! String
                volgendeReca.adres_straat =  adres_straatStr
                
                volgendeReca.naam = recaObject.value(forKey: "naam") as? String
                //rest keys nog niet geparset
            }
        } catch  {
            print("Fout bij binnenhalen van de data")
        }
    }

    func parseSanitair( context:NSManagedObjectContext)
    {
        //waar staan de gegevens
        let url = URL(string: "http://web10.weopendata.com/measurements/sanitair")
        //exceptions mogelijk bv. geen internet
        do {
            //data binnentrekken van url en in array opslaan
            let sanitairData = try Data(contentsOf: url!)
            let sanitairArray:NSArray = try JSONSerialization.jsonObject(with: sanitairData) as! NSArray
            
            //elk item in array overlopen om gegevens uit te halen
            for item in sanitairArray {
                
                let sanitairObject:NSDictionary = item as! NSDictionary
                //entiteit aanmaken, context = verwijzing naar waar opgeslaan
                let volgendeSanitair = Sanitair(context: context)
                
                //strings omzetten waar nodig
                let adres_straatStr = sanitairObject.value(forKey: "adres_straat") as! String
                volgendeSanitair.adres_straat =  adres_straatStr
                
                volgendeSanitair.naam = sanitairObject.value(forKey: "naam") as? String
                //rest keys nog niet geparset
            }
        } catch  {
            print("Fout bij binnenhalen van de data")
        }
    }
    
    func parseVpp( context:NSManagedObjectContext)
    {
        //waar staan de gegevens
        let url = URL(string: "http://web10.weopendata.com/measurements/vpp")
        //exceptions mogelijk bv. geen internet
        do {
            //data binnentrekken van url en in array opslaan
            let vppData = try Data(contentsOf: url!)
            let vppArray:NSArray = try JSONSerialization.jsonObject(with: vppData) as! NSArray
            
            //elk item in array overlopen om gegevens uit te halen
            for item in vppArray {
                
                let vppObject:NSDictionary = item as! NSDictionary
                //entiteit aanmaken, context = verwijzing naar waar opgeslaan
                let volgendeVpp = VPP(context: context)
                
                //strings omzetten waar nodig
                let adres_straatStr = vppObject.value(forKey: "adres_straat") as! String
                volgendeVpp.adres_straat =  adres_straatStr
                
                volgendeVpp.naam = vppObject.value(forKey: "naam") as? String
                //rest keys nog niet geparset
            }
        } catch  {
            print("Fout bij binnenhalen van de data")
        }
    }

}
