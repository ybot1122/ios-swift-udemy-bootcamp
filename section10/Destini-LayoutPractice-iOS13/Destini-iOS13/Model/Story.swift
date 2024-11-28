//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    
    let title: String
    let choice1: String
    let choice1Destination: Int
    let choice2: String?
    let choice2Destination: Int?
    let image: String?
    
    init(title: String, choice1: String, choice1Destination: Int, choice2: String? = nil, choice2Destination: Int? = nil, image: String? = nil) {
        self.title = title
        self.choice1 = choice1
        self.choice1Destination = choice1Destination
        self.choice2 = choice2
        self.choice2Destination = choice2Destination
        self.image = image
    }
    
}
