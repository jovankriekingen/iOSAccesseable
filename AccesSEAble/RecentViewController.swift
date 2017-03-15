//
//  RecentViewController.swift
//  AccesSEAble
//
//  Created by mobapp10 on 13/03/17.
//  Copyright © 2017 jo van kriekingen. All rights reserved.
//

import UIKit
import CoreData


class LijstweergaveViewController: UITableViewController, UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    var itemList:[NSManagedObject] = []
    var context:NSManagedObjectContext?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Dit zou de tableview moeten opvullen met de waarden uit de tabel
        
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        
        let recentItem = itemList[indexPath.row]
        let naam = recentItem.value(forKey: "NAAM")
        let straat = recentItem.value(forKey: "ADRES_STRAAT")
        let straatNr = recentItem.value(forKey: "ADRES_NR")
        let postCode = recentItem.value(forKey: "PNR")
        let gemeente = recentItem.value(forKey: "GEMEENTE")
        
        cell.textLabel?.text = naam as? String
        cell.textLabel?.text = straat as? String
        cell.textLabel?.text = straatNr as? String
        cell.textLabel?.text = naam as? String
        cell.textLabel?.text = postCode as? String
        cell.textLabel?.text = gemeente as? String
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList.count
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
