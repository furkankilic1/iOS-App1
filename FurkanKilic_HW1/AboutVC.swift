//
//  AboutVC.swift
//  FurkanKilic_HW1
//
//  Created by CTIS Student on 26.10.2021.
//  Copyright © 2021 CTIS. All rights reserved.
//

import UIKit

class AboutVC: UIViewController {

    @IBOutlet weak var mLabel: UILabel!
    
    var labelText = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mLabel.text = labelText
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
