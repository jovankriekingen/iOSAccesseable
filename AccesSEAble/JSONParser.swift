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
            let jsonData = try Data(contentsOf: url!)
            let jsonArray:NSArray = try JSONSerialization.jsonObject(with: jsonData) as! NSArray
            
            //elk item in array overlopen om gegevens uit te halen
            for item in jsonArray {
                
                let jsonObject:NSDictionary = item as! NSDictionary
                //entiteit aanmaken, context = verwijzing naar waar opgeslaan
                let volgendeTramHalte = Tram(context: context)
                
                //strings omzetten waar nodig
                let idStr = jsonObject.value(forKey: "stop_id") as! String
                volgendeTramHalte.stop_id =  idStr
                
                volgendeTramHalte.naam = jsonObject.value(forKey: "naam") as? String
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
            let jsonData = try Data(contentsOf: url!)
            let jsonArray:NSArray = try JSONSerialization.jsonObject(with: jsonData ) as! NSArray
            
            for item in jsonArray{
                
                let jsonObject:NSDictionary = item as! NSDictionary
                let volgendeDijk = Dijk(context: context)
                
                let idStr = jsonObject.value(forKey: "adres_locatie") as! String
                volgendeDijk.adres_locatie = idStr
            
                volgendeDijk.naam = jsonObject.value(forKey: "naam") as? String
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
            let jsonData = try Data(contentsOf: url!)
            let jsonArray:NSArray = try JSONSerialization.jsonObject(with: jsonData) as! NSArray
            
            //elk item in array overlopen om gegevens uit te halen
            for item in jsonArray {
                
                let jsonObject:NSDictionary = item as! NSDictionary
                //entiteit aanmaken, context = verwijzing naar waar opgeslaan
                let volgendeInfo = Info(context: context)
                
                //strings omzetten waar nodig
                let idStr = jsonObject.value(forKey: "adres_straat") as! String
                volgendeInfo.adres_straat =  idStr
                
                volgendeInfo.naam = jsonObject.value(forKey: "naam") as? String
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
            let jsonData = try Data(contentsOf: url!)
            let jsonArray:NSArray = try JSONSerialization.jsonObject(with: jsonData) as! NSArray
            
            //elk item in array overlopen om gegevens uit te halen
            for item in jsonArray {
                
                let jsonObject:NSDictionary = item as! NSDictionary
                //entiteit aanmaken, context = verwijzing naar waar opgeslaan
                let volgendeLogie = Logies(context: context)
                
                //strings omzetten waar nodig
                let idStr = jsonObject.value(forKey: "adres_straat") as! String
                volgendeLogie.adres_straat =  idStr
                
                volgendeLogie.naam = jsonObject.value(forKey: "naam") as? String
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
            let jsonData = try Data(contentsOf: url!)
            let jsonArray:NSArray = try JSONSerialization.jsonObject(with: jsonData) as! NSArray
            
            //elk item in array overlopen om gegevens uit te halen
            for item in jsonArray {
                
                let jsonObject:NSDictionary = item as! NSDictionary
                //entiteit aanmaken, context = verwijzing naar waar opgeslaan
                let volgendePOI = POI(context: context)
                
                //strings omzetten waar nodig
                let idStr = jsonObject.value(forKey: "id_extern") as! String
                volgendePOI.id_extern =  idStr
                
                volgendePOI.naam = jsonObject.value(forKey: "naam") as? String
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
            let jsonData = try Data(contentsOf: url!)
            let jsonArray:NSArray = try JSONSerialization.jsonObject(with: jsonData) as! NSArray
            
            //elk item in array overlopen om gegevens uit te halen
            for item in jsonArray {
                
                let jsonObject:NSDictionary = item as! NSDictionary
                //entiteit aanmaken, context = verwijzing naar waar opgeslaan
                let volgendeReca = Reca(context: context)
                
                //strings omzetten waar nodig
                let idStr = jsonObject.value(forKey: "adres_straat") as! String
                volgendeReca.adres_straat =  idStr
                
                volgendeReca.naam = jsonObject.value(forKey: "naam") as? String
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
            let jsonData = try Data(contentsOf: url!)
            let jsonArray:NSArray = try JSONSerialization.jsonObject(with: jsonData) as! NSArray
            
            //elk item in array overlopen om gegevens uit te halen
            for item in jsonArray {
                
                let jsonObject:NSDictionary = item as! NSDictionary
                //entiteit aanmaken, context = verwijzing naar waar opgeslaan
                let volgendeSanitair = Sanitair(context: context)
                
                //strings omzetten waar nodig
                let idStr = jsonObject.value(forKey: "adres_straat") as! String
                volgendeSanitair.adres_straat =  idStr
                
                volgendeSanitair.naam = jsonObject.value(forKey: "naam") as? String
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
            let jsonData = try Data(contentsOf: url!)
            let jsonArray:NSArray = try JSONSerialization.jsonObject(with: jsonData) as! NSArray
            
            //elk item in array overlopen om gegevens uit te halen
            for item in jsonArray {
                
                let jsonObject:NSDictionary = item as! NSDictionary
                //entiteit aanmaken, context = verwijzing naar waar opgeslaan
                let volgendeVpp = VPP(context: context)
                
                //strings omzetten waar nodig
                let idStr = jsonObject.value(forKey: "adres_straat") as! String
                volgendeVpp.adres_straat =  idStr
                
                volgendeVpp.naam = jsonObject.value(forKey: "naam") as? String
                //rest keys nog niet geparset
            }
        } catch  {
            print("Fout bij binnenhalen van de data")
        }
    }

}
