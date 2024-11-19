//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = [
        "Soft": 300,
        "Medium": 420,
        "Hard": 720
    ]
    
    var activeTimer: Timer?
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness: String = sender.currentTitle ?? "unknown"
        
        let timeInSec = eggTimes[hardness]!
        
        startTimer(start: timeInSec)
    }
    
    
    func startTimer(start: Int) {
        
        activeTimer?.invalidate()
        
        var countdown = start
        print(countdown, " seconds.")
        activeTimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            countdown -= 1
            print(countdown, " seconds.")
            if (countdown == 0) {
                timer.invalidate()
            }
        }
    }
}
