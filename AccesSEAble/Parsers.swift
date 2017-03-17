//
//  poiVppDAO.swift
//  AccesSEAble
//
//  Created by Lise De Ridder on 15/03/17.
//  Copyright © 2017 jo van kriekingen. All rights reserved.
//

import Foundation
import CoreData

public class parserMethodes {
  
  func parseDijk (context:NSManagedObjectContext)
  {
    let url = URL(string: "http://web10.weopendata.com/measurements/dijk")
    do {
      
      let dijkData = try Data(contentsOf: url!)
      let dijkArray:NSArray = try JSONSerialization.jsonObject(with: dijkData) as! NSArray
      
      for item in dijkArray {
        
        let dijkMember:NSDictionary = item as! NSDictionary
        let rowDijk = Dijk(context: context)
        
        // strings omzetten waar nodig
        let latStr = dijkMember.value(forKey: "LAT") as? String
        rowDijk.lat = Double(latStr!)!
        let lonStr = dijkMember.value(forKey: "LON") as? String
        rowDijk.lon = Double(lonStr!)!
        
        rowDijk.id_westkans = dijkMember.value(forKey: "ID_WESTKANS") as? String
        rowDijk.type = dijkMember.value(forKey: "TYPE") as? String
        rowDijk.naam = dijkMember.value(forKey: "NAAM") as? String
        rowDijk.adres_locatie = dijkMember.value(forKey: "ADRES_LOCATIE") as? String
        rowDijk.postcode = dijkMember.value(forKey: "POSTCODE") as? String
        rowDijk.lat = dijkMember.value(forKey: "LAT") as! Double
        rowDijk.lon = dijkMember.value(forKey: "LON") as! Double
      }
    } catch {
    }
  }
  
  
  func parseInfo(context:NSManagedObjectContext) {
    let url = URL(string: "https://web10.weopendata.com/measurements/info.json")
    do{
      
      let infoData = try Data(contentsOf: url!)
      let infoArray:NSArray = try JSONSerialization.jsonObject(with: infoData) as! NSArray
      
      for item in infoArray {
        
        let infoMember:NSDictionary = item as! NSDictionary
        let rowInfo = Info(context: context)
        
        //strings omzetten waar nodig
        let latStr = infoMember.value(forKey: "LAT") as? String
        rowInfo.lat = Double(latStr!)!
        let lonStr = infoMember.value(forKey: "LON") as? String
        rowInfo.lon = Double(lonStr!)!
        
        rowInfo.id_westkans = infoMember.value(forKey: "ID_WESTKANS") as? String
        rowInfo.id_westtoer = infoMember.value(forKey: "ID_WESTTOER") as? String
        rowInfo.type = infoMember.value(forKey: "TYPE") as? String
        rowInfo.subtype = infoMember.value(forKey: "SUBTYPE") as? String
        rowInfo.naam = infoMember.value(forKey: "NAAM") as? String
        rowInfo.adres_straat = infoMember.value(forKey: "ADRES_STRAAT") as? String
        rowInfo.adres_nr = infoMember.value(forKey: "ADRES_NR") as? String
        rowInfo.adres_bus = infoMember.value(forKey: "ADRES_BUS") as? String
        rowInfo.pnr = infoMember.value(forKey: "PNR") as? String
        rowInfo.gemeente = infoMember.value(forKey: "GEMEENTE") as? String
        rowInfo.deelgemeente = infoMember.value(forKey: "DEELGEMEENTE") as? String
        rowInfo.regio = infoMember.value(forKey: "REGIO") as? String
        rowInfo.tel = infoMember.value(forKey: "TEL") as? String
        rowInfo.gsm = infoMember.value(forKey: "GSM") as? String
        rowInfo.fax = infoMember.value(forKey: "FAX") as? String
        rowInfo.web = infoMember.value(forKey: "WEB") as? String
        rowInfo.mail = infoMember.value(forKey: "MAIL") as? String
        rowInfo.openingsuren = infoMember.value(forKey: "OPENINGSUREN") as? String
        rowInfo.score = infoMember.value(forKey: "SCORE") as? String
        rowInfo.label = infoMember.value(forKey: "LABEL") as? String
        rowInfo.voorzieningen_blinden_doven = infoMember.value(forKey: "VOORZIENINGEN_BLINDEN_DOVEN") as? String
        rowInfo.parking_score = infoMember.value(forKey: "PARKING_SCORE") as? String
        rowInfo.parking_aanduiding_verkeersbord = infoMember.value(forKey: "PARKING_AANDUIDING_VERKEERSBORD") as? String
        rowInfo.parking_aanduiding_omlijning = infoMember.value(forKey: "PARKING_AANDUIDING_OMLIJNING") as? String
        rowInfo.parking_aanduiding_zichtbaar = infoMember.value(forKey: "PARKING_AANDUIDING_ZICHTBAAR") as? String
        rowInfo.parking_aanduiding_score = infoMember.value(forKey: "PARKING_AANDUIDING_SCORE") as? String
        rowInfo.parking_orientatie = infoMember.value(forKey: "PARKING_ORIENTATIE") as? String
        rowInfo.parking_breedte_data = infoMember.value(forKey: "PARKING_BREEDTE_DATA") as? String
        rowInfo.parking_lengte_data = infoMember.value(forKey: "PARKING_LENGTE_DATA") as? String
        rowInfo.parking_breedte_tekst = infoMember.value(forKey: "PARKING_BREEDTE_TEKST") as? String
        rowInfo.parking_lengte_tekst = infoMember.value(forKey: "PARKING_LENGTE_TEKST") as? String
        rowInfo.parking_breedte_uitstapzone_tekst = infoMember.value(forKey: "PARKING_BREEDTE_UITSTAPZONE_TEKST") as? String
        rowInfo.parking_lengte_uitstapzone_tekst = infoMember.value(forKey: "PARKING_LENGTE_UITSTAPZONE_TEKST") as? String
        rowInfo.parking_ondergrond_materiaal = infoMember.value(forKey: "PARKING_ONDERGROND_MATERIAAL") as? String
        rowInfo.parking_ondergrond_materiaal_score = infoMember.value(forKey: "PARKING_ONDERGROND_MATERIAAL_SCORE") as? String
        rowInfo.toegangspad_score = infoMember.value(forKey: "TOEGANGSPAD_SCORE") as? String
        rowInfo.toegangspad_breedte = infoMember.value(forKey: "TOEGANGSPAD_BREEDTE") as? String
        rowInfo.toegangspad_breedte_score = infoMember.value(forKey: "TOEGANGSPAD_BREEDTE_SCORE") as? String
        rowInfo.toegangspad_ondergrond = infoMember.value(forKey: "TOEGANGSPAD_ONDERGROND") as? String
        rowInfo.toegangspad_ondergrond_score = infoMember.value(forKey: "TOEGANGSPAD_ONDERGROND_SCORE") as? String
        rowInfo.toegangspad_drempel = infoMember.value(forKey: "TOEGANGSPAD_DREMPEL") as? String
        rowInfo.toegangspad_drempel_score = infoMember.value(forKey: "TOEGANGSPAD_DREMPEL_SCORE") as? String
        rowInfo.toegangspad_hoogteverschil_helling = infoMember.value(forKey: "TOEGANGSPAD_HOOGTEVERSCHIL_HELLING") as? String
        rowInfo.toegangspad_helling_pct = infoMember.value(forKey: "TOEGANGSPAD_HELLING_PCT") as? String
        rowInfo.toegangspad_helling_score = infoMember.value(forKey: "TOEGANGSPAD_HELLING_SCORE") as? String
        rowInfo.inkom_score = infoMember.value(forKey: "INKOM_SCORE") as? String
        rowInfo.inkom_drempel = infoMember.value(forKey: "INKOM_DREMPEL") as? String
        rowInfo.inkom_drempel_score = infoMember.value(forKey: "INKOM_DREMPEL_SCORE") as? String
        rowInfo.inkom_hellend_vlak_hoogteverschil = infoMember.value(forKey: "INKOM_HELLEND_VLAK_HOOGTEVERSCHIL") as? String
        rowInfo.inkom_hellend_vlak_pct = infoMember.value(forKey: "INKOM_HELLEND_VLAK_PCT") as? String
        rowInfo.inkom_hellend_vlak_pct_score = infoMember.value(forKey: "INKOM_HELLEND_VLAK_PCT_SCORE") as? String
        rowInfo.inkom_draaicirkel_voor = infoMember.value(forKey: "INKOM_DRAAICIRKEL_VOOR") as? String
        rowInfo.inkom_draaicirkel_voor_score = infoMember.value(forKey: "INKOM_DRAAICIRKEL_VOOR_SCORE") as? String
        rowInfo.inkomdeur_breedte = infoMember.value(forKey: "INKOMDEUR_BREEDTE") as? String
        rowInfo.inkomdeur_breedte_score = infoMember.value(forKey: "INKOMDEUR_BREEDTE_SCORE") as? String
        rowInfo.inkom_draaicirkel_na = infoMember.value(forKey: "INKOM_DRAAICIRKEL_NA") as? String
        rowInfo.inkom_draaicirkel_na_score = infoMember.value(forKey: "INKOM_DRAAICIRKEL_NA_SCORE") as? String
        rowInfo.circulatie_horizontaal_score = infoMember.value(forKey: "CIRCULATIE_HORIZONTAAL_SCORE") as? String
        rowInfo.circulatie_route_toilet_kleinste_draaicirkel = infoMember.value(forKey: "CIRCULATIE_ROUTE_TOILET_KLEINSTE_DRAAICIRKEL") as? String
        rowInfo.circulatie_route_toilet_kleinste_draaicirkel_score = infoMember.value(forKey: "CIRCULATIE_ROUTE_TOILET_KLEINSTE_DRAAICIRKEL_SCORE") as? String
        rowInfo.circulatie_route_toilet_smalste_punt = infoMember.value(forKey: "CIRCULATIE_ROUTE_TOILET_SMALSTE_PUNT") as? String
        rowInfo.circulatie_route_toilet_smalste_punt_score = infoMember.value(forKey: "CIRCULATIE_ROUTE_TOILET_SMALSTE_PUNT_SCORE") as? String
        rowInfo.circulatie_verticaal_score = infoMember.value(forKey: "CIRCULATIE_VERTICAAL_SCORE") as? String
        rowInfo.circulatie_lift_deur = infoMember.value(forKey: "CIRCULATIE_LIFT_DEUR") as? String
        rowInfo.circulatie_lift_deur_score = infoMember.value(forKey: "CIRCULATIE_LIFT_DEUR_SCORE") as? String
        rowInfo.circulatie_lift_kooi = infoMember.value(forKey: "CIRCULATIE_LIFT_KOOI") as? String
        rowInfo.circulatie_lift_kooi_score = infoMember.value(forKey: "CIRCULATIE_LIFT_KOOI_SCORE") as? String
        rowInfo.balie_data = infoMember.value(forKey: "BALIE_DATA") as? String
        rowInfo.balie_score = infoMember.value(forKey: "BALIE_SCORE") as? String
        rowInfo.folders_score = infoMember.value(forKey: "FOLDERS_SCORE") as? String
        rowInfo.expositieruimte_score = infoMember.value(forKey: "EXPOSITIERUIMTE_SCORE") as? String
        rowInfo.toilet_score = infoMember.value(forKey: "TOILET_SCORE") as? String
        rowInfo.toilet_deur_draaicirkel_voor = infoMember.value(forKey: "TOILET_DEUR_DRAAICIRKEL_VOOR") as? String
        rowInfo.toilet_deur_draaicirkel_voor_score = infoMember.value(forKey: "TOILET_DEUR_DRAAICIRKEL_VOOR_SCORE") as? String
        rowInfo.toilet_deur_breedte = infoMember.value(forKey: "TOILET_DEUR_BREEDTE") as? String
        rowInfo.toilet_deur_breedte_score = infoMember.value(forKey: "TOILET_DEUR_BREEDTE_SCORE") as? String
        rowInfo.toilet_ruimte = infoMember.value(forKey: "TOILET_RUIMTE") as? String
        rowInfo.toilet_draaicirkel = infoMember.value(forKey: "TOILET_DRAAICIRKEL") as? String
        rowInfo.toilet_draaicirkel_score = infoMember.value(forKey: "TOILET_DRAAICIRKEL_SCORE") as? String
        rowInfo.toilet_ruimtevoor = infoMember.value(forKey: "TOILET_RUIMTEVOOR") as? String
        rowInfo.toilet_ruimtevoor_score = infoMember.value(forKey: "TOILET_RUIMTEVOOR_SCORE") as? String
        rowInfo.toilet_ruimtenaast = infoMember.value(forKey: "TOILET_RUIMTENAAST") as? String
        rowInfo.toilet_ruimtenaast_score = infoMember.value(forKey: "TOILET_RUIMTENAAST_SCORE") as? String
        rowInfo.toilet_beugels = infoMember.value(forKey: "TOILET_BEUGELS") as? String
        rowInfo.toilet_beugels_score = infoMember.value(forKey: "TOILET_BEUGELS_SCORE") as? String
        rowInfo.toilet_wastafel_locatie = infoMember.value(forKey: "TOILET_WASTAFEL_LOCATIE") as? String
        rowInfo.toilet_wastafel_locatie_score = infoMember.value(forKey: "TOILET_WASTAFEL_LOCATIE_SCORE") as? String
        rowInfo.toilet_wastafel_onderrijdbaar = infoMember.value(forKey: "TOILET_WASTAFEL_ONDERRIJDBAAR_SCORE") as? String
        rowInfo.url_toevla = infoMember.value(forKey: "URL_TOEVLA") as? String
        rowInfo.url_fiche = infoMember.value(forKey: "URL_FICHE") as? String
        rowInfo.url_picture_main = infoMember.value(forKey: "URL_PICTURE_MAIN") as? String
        rowInfo.url_picture_toilet = infoMember.value(forKey: "URL_PICTURE_TOILET") as? String
        rowInfo.url_picture_extra1 = infoMember.value(forKey: "URL_PICTURE_EXTRA1") as? String
        rowInfo.url_picture_extra2 = infoMember.value(forKey: "URL_PICTURE_EXTRA2") as? String
        rowInfo.x = infoMember.value(forKey: "X") as? String
        rowInfo.y = infoMember.value(forKey: "Y") as? String
        //rowInfo.lat = infoMember.value(forKey: "LAT") as! Double
        //rowInfo.lon = infoMember.value(forKey: "LON") as! Double
      }
    } catch {
    }
    print("info gelukt")
  }
  
  
  
  func parseLogies (context:NSManagedObjectContext)
  {
    let url = URL(string: "http://web10.weopendata.com/measurements/logies.json")
    do {
      
      let logiesData = try Data(contentsOf: url!)
      let logiesArray:NSArray = try JSONSerialization.jsonObject(with: logiesData) as! NSArray
      
      for item in logiesArray {
        
        let logiesMember:NSDictionary = item as! NSDictionary
        let rowLogies = Logies(context: context)
        
        //strings omzetten waar nodig
        let latStr = logiesMember.value(forKey: "LAT") as? String
        rowLogies.lat = Double(latStr!)!
        let lonStr = logiesMember.value(forKey: "LON") as? String
        rowLogies.lon = Double(lonStr!)!
        
        rowLogies.id_westkans = logiesMember.value(forKey: "ID_WESTKANS") as? String
        rowLogies.id_westtoer = logiesMember.value(forKey: "ID_WESTTOER") as? String
        rowLogies.id_tvl = logiesMember.value(forKey: "ID_TVL") as? String
        rowLogies.type = logiesMember.value(forKey: "TYPE") as? String
        rowLogies.naam = logiesMember.value(forKey: "NAAM") as? String
        rowLogies.label = logiesMember.value(forKey: "LABEL") as? String
        rowLogies.adres_straat = logiesMember.value(forKey: "ADRES_STRAAT") as? String
        rowLogies.adres_nr = logiesMember.value(forKey: "ADRES_NR") as? String
        rowLogies.adres_bus = logiesMember.value(forKey: "ADRES_BUS") as? String
        rowLogies.postcode = logiesMember.value(forKey: "POSTCODE") as? String
        rowLogies.gemeente = logiesMember.value(forKey: "GEMEENTE") as? String
        rowLogies.deelgemeente = logiesMember.value(forKey: "DEELGEMEENTE") as? String
        rowLogies.regio = logiesMember.value(forKey: "REGIO") as? String
        rowLogies.tel = logiesMember.value(forKey: "TEL") as? String
        rowLogies.fax = logiesMember.value(forKey: "FAX") as? String
        rowLogies.gsm = logiesMember.value(forKey: "GSM") as? String
        rowLogies.web = logiesMember.value(forKey: "WEB") as? String
        rowLogies.mail = logiesMember.value(forKey: "MAIL") as? String
        rowLogies.url_toevla = logiesMember.value(forKey: "URL_TOEVLA") as? String
        rowLogies.url_picture_main = logiesMember.value(forKey: "URL_PICTURE_MAIN") as? String
        rowLogies.url_picture_toilet = logiesMember.value(forKey: "URL_PICTURE_TOILET") as? String
        rowLogies.url_picture_extra1 = logiesMember.value(forKey: "URL_PICTURE_EXTRA1") as? String
        rowLogies.url_picture_extra2 = logiesMember.value(forKey: "URL_PICTURE_EXTRA2") as? String
        rowLogies.x = logiesMember.value(forKey: "X") as? String
        rowLogies.y = logiesMember.value(forKey: "Y") as? String
        //rowLogies.lat = logiesMember.value(forKey: "LAT") as! Double
        //rowLogies.lon = logiesMember.value(forKey: "LON") as! Double
        
      }
    } catch {
    }
  }
    
}
