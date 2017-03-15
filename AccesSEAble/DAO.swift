//
//  DAO.swift
//  AccesSEAble
//
//  Created by Lise De Ridder on 15/03/17.
//  Copyright © 2017 jo van kriekingen. All rights reserved.
//

import Foundation

public class DAO {
    let mainDAO = DAO()
    
    init() {
        let poidao = poiDAO()
        let appDell = AppDelegate()
        poidao.parsePOI(context: appDell.persistentContainer.viewContext)
    }
}
