//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Rishav Gupta on 30/09/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain {
    var bmi: BMI?
    
//    init() {
//        self.bmiValue = "0.0"
//    }
    
    mutating func calculateBMI(h height: Float, w weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue<18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more Snacks!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmiValue<24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat fewer Snacks!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }

    // getBMIValue() using Optional Binding
    func getBMIValue() -> String{
        if let safeValue = bmi?.value {
            return  String(format: "%.1f", safeValue)
        }else{
            return "0.0"
        }
    }
    
    // getBMIValue() using init()
//    func getBMIValue() -> String {
//        return bmiValue!
//    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Put your weight and height"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
