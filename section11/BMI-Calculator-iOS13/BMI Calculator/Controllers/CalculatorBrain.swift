//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Toby Liu on 12/3/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float?
    
    
    mutating func calculateBmi(height: Float, weight: Float) {
        let bmi = weight / pow(height, 2)
        self.bmi = bmi
    }
    
    func getBmiValue() -> String {
        return String(format: "%.1f", bmi)
    }
}
