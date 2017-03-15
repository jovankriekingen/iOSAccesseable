//
//  InfoTramLogiesDAO.swift
//  AccesSEAble
//
//  Created by mobapp08 on 14/03/17.
//  Copyright © 2017 jo van kriekingen. All rights reserved.
//

import Foundation

import CoreData


public class tramDAO {
  
  func parseTram (context:NSManagedObjectContext)
  {
    
    let url = URL(string: "http://web10.weopendata.com/measurements/tram.json")
    do {
      
      let tramData = try Data(contentsOf: url!)
      let tramArray:NSArray = try JSONSerialization.jsonObject(with: tramData) as! NSArray
      
      
      for item in tramArray {
        
        let tramMember:NSDictionary = item as! NSDictionary
        
        let rowTram = Tram(context: context)
        
        
        rowTram.stop_id = tramMember.value(forKey: "stop_id") as? String
        rowTram.stop_code = tramMember.value(forKey: "stop_code") as? String
        rowTram.naam = tramMember.value(forKey: "stop_name") as? String
        rowTram.stop_desc = tramMember.value(forKey: "stop_desc") as? String
        rowTram.stop_lat = tramMember.value(forKey: "stop_lat") as? String
        rowTram.stop_lon = tramMember.value(forKey: "stop_lon") as? String
        rowTram.zone_id = tramMember.value(forKey: "zone_id") as? String
        rowTram.stop_url = tramMember.value(forKey: "stop_url") as? String
        rowTram.location_type = tramMember.value(forKey: "location_type") as? String
        rowTram.parent_station = tramMember.value(forKey: "parent_station") as? String
        rowTram.weelchair_boarding = tramMember.value(forKey: "weelchair_boarding") as? String
        print(tramMember)
        
      }
    } catch  {
      print("parse error tram")
    }
  }
}

public class infoDAO {
  func parseInfo(context:NSManagedObjectContext) {
    let url = URL(string: "http://web10.weopendata.com/measurements/info.json")
    do{
      
      let infoData = try Data(contentsOf: url!)
      let infoArray:NSArray = try JSONSerialization.jsonObject(with: infoData) as! NSArray
      
      for item in infoArray {
        
        let infoMember:NSDictionary = item as! NSDictionary
        let rowInfo = Info(context: context)
        
        
        rowInfo.id_westkans = infoMember.value(forKey: "ID_WESTKANS") as? String
        
        }
        } catch {
      
      
    }
    
    
  }
  
}
