//
//  DAO.swift
//  AccesSEAble
//
//  Created by Lise De Ridder on 15/03/17.
//  Copyright © 2017 jo van kriekingen. All rights reserved.
//  https://www.hackingwithswift.com/read/38/7/examples-of-using-nspredicate-to-filter-nsfetchrequest
//  http://nshipster.com/nspredicate/
//

import Foundation
import CoreData

public class DAO {
    static let mainDAO = DAO.init()
    
    lazy var persistentContainer: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "ASea")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    private init() {
        let parser = parserMethodes()
        //parsen en laten opslaan binnen context, dit komt uit CoreData container
        
        //parser.parseDijk(context: persistentContainer.viewContext)
        parser.parseInfo(context: persistentContainer.viewContext)
        //parser.parseLogies(context: persistentContainer.viewContext)
        parser.parsePOI(context: persistentContainer.viewContext)
        //parser.parseSanitair(context: persistentContainer.viewContext)
        //parser.parseTram(context: persistentContainer.viewContext)
        //parser.parseReca(context: persistentContainer.viewContext)
        parser.parseVPP(context: persistentContainer.viewContext)
        
        saveContext()
    }
    
    //MARK: Dijk functies
    func getAlleDijken() -> [Dijk] {
        let request = NSFetchRequest<NSFetchRequestResult>.init(entityName: "Dijk")
        
        do {
            let dijken = try persistentContainer.viewContext.fetch(request) as! [Dijk]
            
            return dijken
        } catch {
            print("Opvragen dijken mislukt!")
        }
        
        return []
    }
    
    //MARK: Info functies
    func getAlleInfoKantoren() -> [Info] {
        let request = NSFetchRequest<NSFetchRequestResult>.init(entityName: "Info")
        
        do {
            let infoKantoren = try persistentContainer.viewContext.fetch(request) as! [Info]
            
            return infoKantoren
        } catch {
            print("Opvragen infokantoren mislukt!")
        }
        
        return []
    }
    
    
    //MARK: Logie functies
    func getAlleLogies() -> [Logies] {
        let request = NSFetchRequest<NSFetchRequestResult>.init(entityName: "Logies")
        
        do {
            let logies = try persistentContainer.viewContext.fetch(request) as! [Logies]
            
            return logies
        } catch {
            print("Opvragen logies mislukt!")
        }
        
        return []
    }
    
    //MARK: POI functies
    func getAllePOI() -> [POI] {
        let request = NSFetchRequest<NSFetchRequestResult>.init(entityName: "POI")
        
        
        do {
            let pointsOfInterest = try persistentContainer.viewContext.fetch(request) as! [POI]
            
            return pointsOfInterest
        } catch {
            print("Opvragen poi mislukt!")
        }
        
        return []
    }
    
    func getPOILijstMetZoek(zoekVoorwaarde: String) -> [POI] {
        let req = NSFetchRequest<NSFetchRequestResult>.init(entityName: "POI")
        //req.naamIsZoek = NSPredicate(format: "naam contains[c] %@", zoekVoorwaarde)
        let zoekenOpInputText = NSPredicate(format: "naam CONTAINS[c] %@", zoekVoorwaarde)
        req.predicate = zoekenOpInputText
        
        do {
            let pointsOfInterest = try persistentContainer.viewContext.fetch(req) as! [POI]
            return pointsOfInterest
        } catch {
            print("Opvragen poi niet mogelijk!")
        }
        return []
    }
    
    //MARK: Reca functies
    func getAlleReca() -> [Reca] {
        let request = NSFetchRequest<NSFetchRequestResult>.init(entityName: "Reca")
        
        do {
            let recaLijst = try persistentContainer.viewContext.fetch(request) as! [Reca]
            
            return recaLijst
        } catch {
            print("Opvragen reca mislukt!")
        }
        
        return []
    }
    
    //MARK: Sanitair functies
    func getAlleSanitair() -> [Sanitair] {
        let request = NSFetchRequest<NSFetchRequestResult>.init(entityName: "Sanitair")
        
        do {
            let sanitairLijst = try persistentContainer.viewContext.fetch(request) as! [Sanitair]
            
            return sanitairLijst
        } catch {
            print("Opvragen wc's mislukt!")
        }
        
        return []
    }
    
    //MARK: Tram functies
    func getAlleTram() -> [Tram] {
        let request = NSFetchRequest<NSFetchRequestResult>.init(entityName: "Tram")
        
        do {
            let tramLijst = try persistentContainer.viewContext.fetch(request) as! [Tram]
            
            return tramLijst
        } catch {
            print("Opvragen tramhaltes mislukt!")
        }
        
        return []
    }
    
    //MARK: VPP functies
    func getAlleVPP() -> [VPP] {
        let request = NSFetchRequest<NSFetchRequestResult>.init(entityName: "VPP")
        
        do {
            let parkeerplaatsenLijst = try persistentContainer.viewContext.fetch(request) as! [VPP]
            
            return parkeerplaatsenLijst
        } catch {
            print("Opvragen vpp mislukt!")
        }
        
        return []
    }
    
    
    
    
    
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}
