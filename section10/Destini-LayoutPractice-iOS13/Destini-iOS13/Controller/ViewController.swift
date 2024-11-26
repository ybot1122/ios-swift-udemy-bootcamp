//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

let stories = [
    Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
    Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
    Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps."),
]

class ViewController: UIViewController {
    
    @IBOutlet weak var choice1Btn: UIButton!
    @IBOutlet weak var choice2Btn: UIButton!
    @IBOutlet weak var storyLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        print("loaded")
        
        storyLabel.text = stories[0].title
        choice1Btn.setTitle(stories[0].choice1, for: .normal)
        choice2Btn.setTitle(stories[0].choice2, for: .normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        print(sender.titleLabel?.text! ?? "unknown button")
    }
    
}

