//
//  CalculatorBrain.swift
//  11.BMI Calculator
//
//  Created by 오현호 on 2021/04/28.
//

import UIKit

struct CalculatorBrain {

    var bmi: BMI?

    mutating func calculateBMI(height: Float, weight: Float) {
        // bmi?.value = weight / pow(height, 2) => ERROR because value was declared with a let
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "You are underweight", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are healthy!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else if bmiValue < 29.9 {
            bmi = BMI(value: bmiValue, advice: "You are overweight", color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1))
        } else if bmiValue < 39.9 {
            bmi = BMI(value: bmiValue, advice: "You are obese", color: #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "You are extremely obese", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }

    }

    func getBMIValue() -> String {

        // 1. Using normal if-else
        // if bmi! != nil {
        //     let bmiToDecimalPoint = String(format: "%.1f", bmi!)
        //     return bmiToDecimalPoint
        // }
        // else {
        //     return "0.0"
        // }

        // 2. Using Optional Binding
        // if let safeBMI = bmi {
        //     let bmiToDecimalPoint = String(format: "%.1f", safeBMI)
        //     return bmiToDecimalPoint
        // }
        // else {
        //     return "0.0"
        // }

        // 3. Nil Coalescing Operator
        let bmiToDecimalPoint = String(format: "%.1f", bmi?.value ?? 0.0 ) // bmi?.value = optional chaining
        return bmiToDecimalPoint
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
