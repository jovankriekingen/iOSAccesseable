//
//  ProfileViewController.swift
//  AccesSEAble
//
//  Created by mobapp10 on 14/03/17.
//  Copyright © 2017 jo van kriekingen. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
//https://www.hackingwithswift.com/read/38/7/examples-of-using-nspredicate-to-filter-nsfetchrequest
    @IBOutlet weak var lblProfielNaam: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnNieuwProfiel() {
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
