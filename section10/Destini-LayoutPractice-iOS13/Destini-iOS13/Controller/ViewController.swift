//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

let choice1 = "Take a left."
let choice2 = "Take a right."
let story0 = "You see a fork in the road."

class ViewController: UIViewController {
    
    @IBOutlet weak var choice1Btn: UIButton!
    @IBOutlet weak var choice2Btn: UIButton!
    @IBOutlet weak var storyLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        print("loaded")
        
        storyLabel.text = story0
        choice1Btn.setTitle(choice1, for: .normal)
        choice2Btn.setTitle(choice2, for: .normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        print(sender.titleLabel?.text! ?? "unknown button")
    }
    
}

