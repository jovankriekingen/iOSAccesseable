//
//  Info+CoreDataProperties.swift
//  AccesSEAble
//
//  Created by mobapp08 on 14/03/17.
//  Copyright © 2017 jo van kriekingen. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Info {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Info> {
        return NSFetchRequest<Info>(entityName: "Info");
    }

    @NSManaged public var id_westkans: String?
    @NSManaged public var id_westtoer: String?
    @NSManaged public var type: String?
    @NSManaged public var subtype: String?
    @NSManaged public var naam: String?
    @NSManaged public var adres_straat: String?
    @NSManaged public var adres_nr: String?
    @NSManaged public var adres_bus: String?
    @NSManaged public var web: String?
    @NSManaged public var fax: String?
    @NSManaged public var gsm: String?
    @NSManaged public var tel: String?
    @NSManaged public var regio: String?
    @NSManaged public var deelgemeente: String?
    @NSManaged public var gemeente: String?
    @NSManaged public var pnr: String?
    @NSManaged public var mail: String?
    @NSManaged public var openingsuren: String?
    @NSManaged public var score: String?
    @NSManaged public var label: String?
    @NSManaged public var voorzieningen_blinden_doven: String?
    @NSManaged public var parking_score: String?
    @NSManaged public var parking_aanduiding_verkeersbord: String?
    @NSManaged public var parking_aanduiding_omlijning: String?
    @NSManaged public var parking_aanduiding_zichtbaar: String?
    @NSManaged public var parking_aanduiding_score: String?
    @NSManaged public var parking_orientatie: String?
    @NSManaged public var parking_breedte_data: Int16
    @NSManaged public var parking_lengte_data: Int16
    @NSManaged public var parking_breedte_tekst: String?
    @NSManaged public var parking_lengte_tekst: String?
    @NSManaged public var parking_breedte_uitstapzone_tekst: String?
    @NSManaged public var parking_lengte_uitstapzone_tekst: String?
    @NSManaged public var parking_ondergrond_materiaal: String?
    @NSManaged public var parking_ondergrond_materiaal_score: String?
    @NSManaged public var toegangspad_score: String?
    @NSManaged public var toegangspad_breedte: Int16
    @NSManaged public var toegangspad_breedte_score: String?
    @NSManaged public var toegangspad_ondergrond: String?
    @NSManaged public var toegangspad_ondergrond_score: String?
    @NSManaged public var toegangspad_drempel: String?
    @NSManaged public var toegangspad_drempel_score: String?
    @NSManaged public var toegangspad_hoogteverschil_helling: Int16
    @NSManaged public var toegangspad_helling_pct: Int16
    @NSManaged public var toegangspad_helling_score: String?
    @NSManaged public var inkom_score: String?
    @NSManaged public var inkom_drempel: String?
    @NSManaged public var inkom_drempel_score: String?
    @NSManaged public var inkom_hellend_vlak_hoogteverschil: Int16
    @NSManaged public var inkom_hellend_vlak_pct: Int16
    @NSManaged public var inkom_hellend_vlak_score: String?
    @NSManaged public var inkom_draaicirkel_voor: Int16
    @NSManaged public var inkom_draaicirkel_voor_score: String?
    @NSManaged public var inkomdeur_breedte: Int16
    @NSManaged public var inkomdeur_breedte_score: String?
    @NSManaged public var inkom_draaicirkel_na: Int16
    @NSManaged public var inkom_draaicirkel_na_score: String?
    @NSManaged public var circulatie_horizontaal_score: String?
    @NSManaged public var circulatie_route_toilet_kleinste_draaicirkel: Int16
    @NSManaged public var circulatie_route_toilet_kleinste_draaicirkel_score: String?
    @NSManaged public var circulatie_route_toilet_smalste_punt: Int16
    @NSManaged public var circulatie_route_toilet_smalste_punt_score: String?
    @NSManaged public var circulatie_verticaal_score: String?
    @NSManaged public var circulatie_lift_deur: Int16
    @NSManaged public var circulatie_lift_deur_score: String?
    @NSManaged public var circulatie_lift_kooi: Int16
    @NSManaged public var circulatie_lift_kooi_score: String?
    @NSManaged public var balie_data: String?
    @NSManaged public var balie_score: String?
    @NSManaged public var folders_score: String?
    @NSManaged public var expositieruimte_score: String?
    @NSManaged public var toilet_score: String?
    @NSManaged public var toilet_deur_draaicirkel_voor: Int16
    @NSManaged public var toilet_deur_draaicirkel_voor_score: String?
    @NSManaged public var toilet_deur_breedte: Int16
    @NSManaged public var toilet_deur_breedte_score: String?
    @NSManaged public var toilet_ruimte: Int16
    @NSManaged public var toilet_draaicirkel: Int16
    @NSManaged public var toilet_draaicirkel_score: String?
    @NSManaged public var toilet_ruimtevoor: Int16
    @NSManaged public var toilet_ruimtevoor_score: String?
    @NSManaged public var toilet_ruimtenaast: Int16
    @NSManaged public var toilet_ruimtenaast_score: String?
    @NSManaged public var toilet_beugels: Int16
    @NSManaged public var toilet_beugels_score: String?
    @NSManaged public var toilet_wastafel_locatie: String?
    @NSManaged public var toilet_wastafel_locatie_score: String?
    @NSManaged public var toilet_wastafel_onderrijdbaar: String?
    @NSManaged public var toilet_wastafel_onderrijdbaar_score: String?
    @NSManaged public var url_toevla: String?
    @NSManaged public var url_fiche: String?
    @NSManaged public var url_picture_main: String?
    @NSManaged public var url_picture_toilet: String?
    @NSManaged public var url_picture_extra1: String?
    @NSManaged public var url_picture_extra2: String?
    @NSManaged public var x: NSDecimalNumber?
    @NSManaged public var y: NSDecimalNumber?
    @NSManaged public var lat: NSDecimalNumber?
    @NSManaged public var lon: NSDecimalNumber?

}
