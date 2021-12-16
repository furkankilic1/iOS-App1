//
//  MHRVC.swift
//  FurkanKilic_HW1
//
//  Created by CTIS Student on 27.10.2021.
//  Copyright © 2021 CTIS. All rights reserved.
//

import UIKit

class MHRVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var mSegmentedControl: UISegmentedControl!
    @IBOutlet weak var mGenderText: UILabel!
    @IBOutlet weak var ageLabel: UITextField!
    var genderOutput = "Male Output"
    var genderType = 0
    
    @IBAction func genderSelection(_ sender: UISegmentedControl) {
        switch mSegmentedControl.selectedSegmentIndex {
        case 0:
            mGenderText.text = "Gender (Male) "
            genderType = 0
        case 1:
            mGenderText.text = "Gender (Female) "
            genderType = 1
        default:
            break
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(false)
    }

    @IBAction func mCalculate(_ sender: Any) {
        
        if ageLabel.text!.isEmpty{
            let alert = UIAlertController(title: "Error Message", message: "Age TextField should not be empty", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        }
        else
        {
            let age = Double(ageLabel.text!)!
            var calculateMhr = 0.0
            var mhrResult = ""
            var startFatBurningHrResult = ""
            var endFatBurningHrResult = ""
            var startFatBurningHR = 0.0
            var endFatBurningHR = 0.0
            
            var startCardioHrResult = ""
            var endCardioHrResult = ""
            var startCardioHR = 0.0
            var endCardioHR = 0.0

            if genderType == 0 {
                genderOutput = "Male Output"
                calculateMhr = 203.7 / (1.0 + exp(0.033 * (age - 104.3)))
            } else {
                genderOutput = "Female Output"
                calculateMhr = 190.2 / (1.0 + exp(0.0453 * (age - 107.5)))
            }
            
            startFatBurningHR = calculateMhr * 0.5
            endFatBurningHR = calculateMhr * 0.7
            
            startCardioHR = calculateMhr * 0.7
            endCardioHR = calculateMhr * 0.8
            
            mhrResult = String(format:"%0.2f", calculateMhr)
            
            startFatBurningHrResult = String(format:"%0.0f", startFatBurningHR)
            endFatBurningHrResult = String(format:"%0.0f", endFatBurningHR)
            
            startCardioHrResult = String(format:"%0.0f", startCardioHR)
            endCardioHrResult = String(format:"%0.0f", endCardioHR)
            
            let alert = UIAlertController(title: genderOutput, message: "MHR = " + mhrResult + " BPM" + "\n Fatburning HR range (" + startFatBurningHrResult + " -- " + endFatBurningHrResult + ")" +
                "\nCardiovascular HR range (" + startCardioHrResult + " -- " + endCardioHrResult + ")" , preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
