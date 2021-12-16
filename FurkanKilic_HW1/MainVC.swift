//
//  MainVC.swift
//  FurkanKilic_HW1
//
//  Created by CTIS Student on 26.10.2021.
//  Copyright © 2021 CTIS. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBAction func btnAbout(_ sender: Any) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueAbout" {
            let destinationController = segue.destination as! AboutVC
            destinationController.labelText = "CTIS 480: HW1 Solution"
        }
    }
    
    @IBAction func unwindSegue (_sender: UIStoryboardSegue ) {}


}

