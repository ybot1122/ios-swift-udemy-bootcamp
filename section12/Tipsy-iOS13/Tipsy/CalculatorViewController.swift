//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var billTextField: UITextField!

    @IBAction func tipChanged(_ sender: UIButton) {
        print(sender.titleLabel!)
    }


    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        print(sender.value)
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        print("calc")
    }
}

