//
//  CalculatorVC.swift
//  FurkanKilic_HW1
//
//  Created by CTIS Student on 27.10.2021.
//  Copyright © 2021 CTIS. All rights reserved.
//

import UIKit

class CalculatorVC: UIViewController {

    @IBOutlet weak var mNumber1: UITextField!
    @IBOutlet weak var mNumber2: UITextField!
    
    @IBAction func mPlusBtn(_ sender: UIButton) {
        var number1 = 0.0
        var number2 = 0.0
        
        if mNumber1.text!.isEmpty {
            number1 = 0.0
        }
        else{
            number1 = Double(mNumber1.text!)!
        }
        
        if mNumber2.text!.isEmpty {
            number2 = 0.0
        }
        else{
            number2 = Double(mNumber2.text!)!
        }
        
        let number1Txt = String(format:"%0.1f", number1)
        let number2Txt = String(format:"%0.1f", number2)
        let result = number1 + number2
        let resultTxt = String(format:"%0.1f", result)
        
        let alert = UIAlertController(title: "Output", message: number1Txt + " + " + number2Txt + " = " + resultTxt  , preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
        NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func mMinusBtn(_ sender: UIButton) {
        var number1 = 0.0
        var number2 = 0.0
        
        if mNumber1.text!.isEmpty {
            number1 = 0.0
        }
        else{
            number1 = Double(mNumber1.text!)!
        }
        
        if mNumber2.text!.isEmpty {
            number2 = 0.0
        }
        else{
            number2 = Double(mNumber2.text!)!
        }
        
        let number1Txt = String(format:"%0.1f", number1)
        let number2Txt = String(format:"%0.1f", number2)
        let result = number1 - number2
        let resultTxt = String(format:"%0.1f", result)
        
        let alert = UIAlertController(title: "Output", message: number1Txt + " - " + number2Txt + " = " + resultTxt  , preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
        NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func mMultiplyBtn(_ sender: UIButton) {
        var number1 = 0.0
        var number2 = 0.0
        
        if mNumber1.text!.isEmpty {
            number1 = 0.0
        }
        else{
            number1 = Double(mNumber1.text!)!
        }
        
        if mNumber2.text!.isEmpty {
            number2 = 0.0
        }
        else{
            number2 = Double(mNumber2.text!)!
        }

        let number1Txt = String(format:"%0.1f", number1)
        let number2Txt = String(format:"%0.1f", number2)
        let result = number1 * number2
        let resultTxt = String(format:"%0.1f", result)
        
        let alert = UIAlertController(title: "Output", message: number1Txt + " x " + number2Txt + " = " + resultTxt  , preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
        NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func mDivideBtn(_ sender: UIButton) {
        var number1 = 0.0
        var number2 = 0.0
        
        if mNumber1.text!.isEmpty {
            number1 = 0.0
        }
        else{
            number1 = Double(mNumber1.text!)!
        }
        
        if mNumber2.text!.isEmpty {
            number2 = 0.0
        }
        else{
            number2 = Double(mNumber2.text!)!
        }
        
        
        if number2 == 0.0 {
            let number1Txt = String(format:"%0.1f", number1)
            
            let alert = UIAlertController(title: "Output", message: number1Txt + " / 1.0  = 0.0 "  , preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        }
        else
        {
            let number1Txt = String(format:"%0.1f", number1)
            let number2Txt = String(format:"%0.1f", number2)
            let result = number1 / number2
            let resultTxt = String(format:"%0.1f", result)
            
            let alert = UIAlertController(title: "Output", message: number1Txt + " / " + number2Txt + " = " + resultTxt  , preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(false)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
