//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var headline: UILabel!

    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = [
        "Soft": 3,
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
        
        progressBar.progress = 0
        
        var countdown = start
        self.headline.text = String(countdown)
        activeTimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            countdown -= 1
            let progress: Float = Float((start - countdown)) / Float(start)
            self.progressBar.progress = progress
            if (countdown == 0) {
                self.headline.text = "Done!"
                timer.invalidate()
            } else {
                self.headline.text = String(countdown)
            }
        }
    }
}
