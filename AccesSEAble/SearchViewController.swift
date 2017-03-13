//
//  SearchViewController.swift
//  AccesSEAble
//
//  Created by mobapp13 on 13/03/17.
//  Copyright © 2017 jo van kriekingen. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UISearchResultsUpdating {
    
    var searchController : UISearchController!
    var resultsController = UITableViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.searchController = UISearchController(searchResultsController : self.resultsController)
        self.tableView.tableHeaderView = self.searchController.searchBar
        self.searchController.searchResultsUpdater

        // Do any additional setup after loading the view.
    }

    

   
}
