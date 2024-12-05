//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import SwiftUI

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var billTextField: UITextField!
    
    var tipPercentage = 0.1;
    var splitCount = 2;
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func billTextValueChanged(_ sender: UITextField) {
        
        print(sender.text!)
        
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        let title = sender.currentTitle ?? "";
        
        print(title)
        
        if (title == "0%") {
            zeroPctButton.isSelected = true;
            tenPctButton.isSelected = false;
            twentyPctButton.isSelected = false;
            tipPercentage = 0.0;
        } else if title == "10%" {
            zeroPctButton.isSelected = false;
            tenPctButton.isSelected = true;
            twentyPctButton.isSelected = false;
            tipPercentage = 0.1;
        } else if title == "20%" {
            zeroPctButton.isSelected = false;
            tenPctButton.isSelected = false;
            twentyPctButton.isSelected = true;
            tipPercentage = 0.2;
        } else {
            print("unknown percentage button?")
        }
        
        print(tipPercentage)
        
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        print(sender.value)
        splitCount = Int(sender.value)
        splitNumberLabel.text = String(splitCount)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(tipPercentage)
        print(splitCount)
        print(billTextField.text!)
        performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToResults") {
            let destination = segue.destination as! ResultsViewController
            destination.billTotal = Double(billTextField.text ?? "0")
            destination.tipPct = tipPercentage
            destination.splitCount = splitCount
        } else {
            print(segue.identifier!)
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

    
}

