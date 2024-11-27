//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    let stories: [Story] = [
        Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
        Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
        Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps."),
    ]

    var currentStoryIndex: Int = 0
    
    init() {
    }

    mutating func nextStory(userChoice: String) {
        if (userChoice == stories[currentStoryIndex].choice1) {
            currentStoryIndex = 1
        } else {
            currentStoryIndex = 2
        }
    }
    
    func getCurrentStory() -> Story {
        return stories[currentStoryIndex]
    }
    
}
