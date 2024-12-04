//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Toby Liu on 12/3/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    
    mutating func calculateBmi(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if (18.5...24.9 ~= bmiValue) {
            self.bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: UIColor.green)
        } else if (bmiValue < 18.5) {
            self.bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
        } else {
            self.bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor.red)
        }
    }
    
    func getBmiValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "unknown"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.gray
    }

}
