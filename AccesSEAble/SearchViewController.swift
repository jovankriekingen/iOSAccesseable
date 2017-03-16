//
//  SearchViewController.swift
//  AccesSEAble
//
//  Created by mobapp10 on 14/03/17.
//  Copyright © 2017 jo van kriekingen. All rights reserved.
//

import UIKit
import CoreData

class SearchViewController: UIViewController, UISearchBarDelegate {
    @IBOutlet weak var swiReca: UISwitch!
    @IBOutlet weak var swiToilet: UISwitch!
    @IBOutlet weak var swiBezienswaardigheden: UISwitch!
    @IBOutlet weak var swiInfoKantoren: UISwitch!
    @IBOutlet weak var swiOvernachten: UISwitch!
    @IBOutlet weak var swiParking: UISwitch!
    @IBOutlet weak var swiHelling: UISwitch!
    @IBOutlet var zoekBalk: UISearchBar!
    
    var zoekresultaten = [NSManagedObject]()
    
    func toetsenbord() {
        if zoekBalk.isFocused {
            view.endEditing(false)
        } else {
            view.endEditing(true)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnZoek() {
   
    }
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if swiReca.isOn {
            
        }
        if swiToilet.isOn {
            
        }
        if swiBezienswaardigheden.isOn {
            for item in DAO.mainDAO.getPOILijstMetZoek(zoekVoorwaarde: searchText)
            {
                zoekresultaten.append(item)
            }
        }
        if swiInfoKantoren.isOn {
            
        }
        if swiOvernachten.isOn {
            
        }
        if swiParking.isOn {
            
        }
        if swiHelling.isOn {
            
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
