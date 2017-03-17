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
    @IBOutlet weak var swiHelling: UISwitch!
    @IBOutlet var zoekBalk: UISearchBar!
    
    var zoekresultaten = [NSManagedObject]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //MARK: searchbar functies
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        performSegue(withIdentifier: "zoekResultatenSegue", sender: zoekresultaten)
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let segueAankomst = segue.destination as! FavoriteViewController
        segueAankomst.itemList = zoekresultaten
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        zoekresultaten.removeAll()
        if swiReca.isOn {
            
        }
        if swiToilet.isOn {
            
        }
        if swiBezienswaardigheden.isOn {
            print(DAO.mainDAO.getPOILijstMetZoek(zoekVoorwaarde: searchText).count)
            for item in DAO.mainDAO.getPOILijstMetZoek(zoekVoorwaarde: searchText)
            {
                zoekresultaten.append(item)
            }
        }
        if swiInfoKantoren.isOn {
            
        }
        if swiOvernachten.isOn {
            
        }
        if swiHelling.isOn {
            print(DAO.mainDAO.getDijkLijstMetZoek(zoekVoorwaarde: searchText).count)
            for item in DAO.mainDAO.getDijkLijstMetZoek(zoekVoorwaarde: searchText)
            {
                zoekresultaten.append(item)
            }
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
