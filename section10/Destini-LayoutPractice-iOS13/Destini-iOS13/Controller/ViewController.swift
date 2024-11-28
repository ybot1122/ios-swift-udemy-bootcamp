//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

var brain: StoryBrain = StoryBrain()

class ViewController: UIViewController {
    
    @IBOutlet weak var choice1Btn: UIButton!
    @IBOutlet weak var choice2Btn: UIButton!
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }

    @IBAction func choiceMade(_ sender: UIButton) {
        print(sender.titleLabel?.text! ?? "unknown button")

        brain.nextStory(userChoice: (sender.titleLabel?.text!)!)
        updateUI()
    }
    
    func updateUI() {
        let currentStory = brain.getCurrentStory()
        storyLabel.text = currentStory.title
        choice1Btn.setTitle(currentStory.choice1, for: .normal)
        choice2Btn.setTitle(currentStory.choice2, for: .normal)
        choice2Btn.isHidden = currentStory.choice2 == nil
        imageView.image = UIImage(named: currentStory.image ?? "")
        imageView.isHidden = currentStory.image == nil
    }
    
}

