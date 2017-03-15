//
//  DAO.swift
//  AccesSEAble
//
//  Created by Lise De Ridder on 15/03/17.
//  Copyright © 2017 jo van kriekingen. All rights reserved.
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
        parser.parsePOI(context: persistentContainer.viewContext)
    }
    
    
    func getPOILijst() -> [POI] {
        let req = NSFetchRequest<NSFetchRequestResult>.init(entityName: "POI")
        
        do {
            let pointsOfInterest = try persistentContainer.viewContext.fetch(req) as! [POI]
            
            return pointsOfInterest
        } catch {
            print("Opvragen poi niet mogelijk!")
        }
        
        return []
    }
    
    func getPOILijstMetZoek(zoekVoorwaarde: String) -> [POI] {
        var req = NSFetchRequest<NSFetchRequestResult>.init(entityName: "POI")
        var naamIsZoek = NSPredicate(format: "NAAM == \(zoekVoorwaarde)")
        
        do {
            let pointsOfInterest = try persistentContainer.viewContext.fetch(req) as! [POI]
            return pointsOfInterest
        } catch {
            print("Opvragen poi niet mogelijk!")
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
