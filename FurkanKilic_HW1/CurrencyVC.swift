//
//  CurrencyVC.swift
//  FurkanKilic_HW1
//
//  Created by CTIS Student on 27.10.2021.
//  Copyright © 2021 CTIS. All rights reserved.
//

import UIKit

class CurrencyVC: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var mSegmentOutlet: UISegmentedControl!
    @IBOutlet weak var mLabel1: UILabel!
    @IBOutlet weak var mLabel2: UILabel!
    @IBOutlet weak var mTextField1: UITextField!
    @IBOutlet weak var mTextField2: UITextField!
    @IBOutlet weak var mImage: UIImageView!
    var curentSelection = 0
    var moneyAmount = 0.0
    
    
    @IBAction func mSegmentAction(_ sender: Any) {
        mTextField1.text = ""
        mTextField2.text = ""
        
        switch mSegmentOutlet.selectedSegmentIndex {
            case 1:
                mLabel2.text = "EUR (\u{20AC}):"
                mTextField2.placeholder = "enter euro"
                mImage.image = UIImage(named: "tl_euro")
                curentSelection = 1
            case 2:
                mLabel2.text = "GBP (\u{00A3}):"
                mTextField2.placeholder = "enter gbp"
                mImage.image = UIImage(named: "tl_gbp")
                curentSelection = 2
            default:
                mLabel2.text = "USD (\u{0024}):"
                mTextField2.placeholder = "enter usd"
                mImage.image = UIImage(named: "tl_usd")
                curentSelection = 0
        }
    
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(false)
    }

    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        mTextField1.text = ""
        mTextField2.text = ""
        
        if curentSelection == 0 {
            mLabel2.text = "EUR (\u{20AC}):"
            mTextField2.placeholder = "enter euro"
            mImage.image = UIImage(named: "tl_euro")
            mSegmentOutlet.selectedSegmentIndex = 1
            curentSelection = 1
        }
        else if curentSelection == 1 {
            mLabel2.text = "GBP (\u{00A3}):"
            mTextField2.placeholder = "enter gbp"
            mImage.image = UIImage(named: "tl_gbp")
            mSegmentOutlet.selectedSegmentIndex = 2
            curentSelection = 2
        }
        else if curentSelection == 2 {
            mLabel2.text = "USD (\u{0024}):"
            mTextField2.placeholder = "enter usd"
            mImage.image = UIImage(named: "tl_usd")
            mSegmentOutlet.selectedSegmentIndex = 0
            curentSelection = 0
        }

    }
    
    
    @IBAction func mTextField1EditingChanged(_ sender: UITextField) {
        
        if sender.text!.isEmpty {
            moneyAmount = 0.0
            mTextField2.text = ""
        }
        else {
            moneyAmount =  Double(sender.text!)!
        }
        
        if curentSelection == 0 {
            let convertToUsd = moneyAmount / 9.6
            mTextField2.text = String(format:"%0.2f", convertToUsd)
        }
        else if curentSelection == 1 {
            let convertToEuro = moneyAmount / 11.2
            mTextField2.text = String(format:"%0.2f", convertToEuro)
        }
        else if curentSelection == 2 {
            let convertToGbp = moneyAmount / 13.5
            mTextField2.text = String(format:"%0.2f", convertToGbp)
        }
        
    }
    
    
    @IBAction func mTextField2EditingChanged(_ sender: UITextField) {
        if sender.text!.isEmpty {
            moneyAmount = 0.0
            mTextField1.text = ""
        }
        else {
            moneyAmount =  Double(sender.text!)!
        }
        
        if curentSelection == 0 {
            let convertUsdToTL = moneyAmount * 9.6
            mTextField1.text = String(format:"%0.2f", convertUsdToTL)
        }
        else if curentSelection == 1 {
            let convertEuroToTL = moneyAmount * 11.2
            mTextField1.text = String(format:"%0.2f", convertEuroToTL)
        }
        else if curentSelection == 2 {
            let convertGbpToTL = moneyAmount * 13.5
            mTextField1.text = String(format:"%0.2f", convertGbpToTL)
        }
    }
    
    
    @IBAction func mTF1EditingDidBegin(_ sender: UITextField) {
        sender.text = ""
        mTextField2.text = ""
        moneyAmount = 0.0
        
        if curentSelection == 0 {
            mTextField2.placeholder = "enter usd"
        }
        else if curentSelection == 1 {
            mTextField2.placeholder = "enter euro"

        }
        else if curentSelection == 2 {
            mTextField2.placeholder = "enter gbp"
        }
    }
    
    
    @IBAction func mTF2EditingDidBegin(_ sender: UITextField) {
        sender.text = ""
        mTextField1.text = ""
        moneyAmount = 0.0
        
        if curentSelection == 0 {
            mTextField2.placeholder = "enter usd"
        }
        else if curentSelection == 1 {
            mTextField2.placeholder = "enter euro"

        }
        else if curentSelection == 2 {
            mTextField2.placeholder = "enter gbp"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        mImage.isUserInteractionEnabled = true
        mImage.addGestureRecognizer(tapGestureRecognizer)
    }
    

}
