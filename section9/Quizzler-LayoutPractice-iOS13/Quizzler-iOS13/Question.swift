//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Toby Liu on 11/21/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
