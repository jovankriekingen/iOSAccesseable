//
//  RecentViewController.swift
//  AccesSEAble
//
//  Created by mobapp10 on 13/03/17.
//  Copyright © 2017 jo van kriekingen. All rights reserved.
//

import UIKit
import CoreData


class RecentViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        let recentItem = itemList[indexPath.row]
        let naamStr = recentItem.value(forKey: "naam")
        let straatStr = recentItem.value(forKey: "adres_straat")
        let straatNrStr = recentItem.value(forKey: "adres_nr")
        
        cell?.textLabel?.text = naamStr as? String
        cell?.detailTextLabel?.text = straatStr as? String
        cell?.detailTextLabel?.text = straatNrStr as? String
        cell?.textLabel?.text = naamStr as? String
        
        return cell!
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
