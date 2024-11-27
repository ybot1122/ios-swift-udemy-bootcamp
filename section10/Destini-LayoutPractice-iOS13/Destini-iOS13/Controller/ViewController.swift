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

var currentStoryIndex = 0

class ViewController: UIViewController {
    
    @IBOutlet weak var choice1Btn: UIButton!
    @IBOutlet weak var choice2Btn: UIButton!
    @IBOutlet weak var storyLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()

    }

    @IBAction func choiceMade(_ sender: UIButton) {
        print(sender.titleLabel?.text! ?? "unknown button")

        if (sender.titleLabel?.text! == stories[currentStoryIndex].choice1) {
            currentStoryIndex = 1
        } else {
            currentStoryIndex = 2
        }
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = stories[currentStoryIndex].title
        choice1Btn.setTitle(stories[currentStoryIndex].choice1, for: .normal)
        choice2Btn.setTitle(stories[currentStoryIndex].choice2, for: .normal)
    }
    
}

