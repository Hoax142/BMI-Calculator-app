//
//  ResultViewController.swift
//  11.BMI Calculator
//
//  Created by 오현호 on 2021/04/28.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String? // Only when it's calculated, it gets value
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        // Go back to CalculateVC
        self.dismiss(animated: true, completion: nil)
    }

}
