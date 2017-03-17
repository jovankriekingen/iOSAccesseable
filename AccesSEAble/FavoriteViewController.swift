//
//  FavoriteViewController.swift
//  AccesSEAble
//
//  Created by mobapp10 on 14/03/17.
//  Copyright © 2017 jo van kriekingen. All rights reserved.
//

import UIKit
import CoreData

class FavoriteViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var favorietenTabel: UITableView!
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
        let naam = recentItem.value(forKey: "naam")
        
        
        cell.textLabel?.text = naam as? String
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

}
