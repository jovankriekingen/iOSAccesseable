//
//  ViewController.swift
//  AccesSEAble
//
//  Created by mobapp08 on 09/03/17.
//  Copyright © 2017 jo van kriekingen. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    DAO.mainDAO.getAllePOI()
    DAO.mainDAO.getAlleReca()
    DAO.mainDAO.getAlleTram()
    DAO.mainDAO.getAlleDijken()
    DAO.mainDAO.getAlleLogies()
    DAO.mainDAO.getAlleSanitair()
    DAO.mainDAO.getAlleInfoKantoren()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
}

