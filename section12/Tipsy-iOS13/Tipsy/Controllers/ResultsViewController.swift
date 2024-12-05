//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Toby Liu on 12/5/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var settingsLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    var billTotal: Double?
    var splitCount: Int?
    var tipPct: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(splitCount ?? 9999)
        
        // Do any additional setup after loading the view.
        settingsLabel.text="Split between \(splitCount!) people, with \(tipPct! * 100)% tip."
        totalLabel.text = billTotal == nil ? "??" : String(format: "%.2f", (billTotal! + (billTotal! * tipPct!)) / Double(splitCount!))
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
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
