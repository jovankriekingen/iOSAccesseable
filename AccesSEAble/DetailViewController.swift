//
//  DetailViewController.swift
//  AccesSEAble
//
//  Created by mobapp10 on 14/03/17.
//  Copyright © 2017 jo van kriekingen. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var imgAfbeelding: UIImageView!
    @IBOutlet weak var lblNaam: UILabel!
    @IBOutlet weak var lblStraat: UILabel!
    @IBOutlet weak var lblNummer: UILabel!
    @IBOutlet weak var lblGemeente: UILabel!
    @IBOutlet weak var lblPostcode: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
