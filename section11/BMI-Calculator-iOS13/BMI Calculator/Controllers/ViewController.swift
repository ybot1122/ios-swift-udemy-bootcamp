//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func sliderValChanged(_ sender: UISlider) {
        
        let roundedValue1 = (sender.value * 100).rounded() / 100

        
        print( roundedValue1)
        
    }
}

