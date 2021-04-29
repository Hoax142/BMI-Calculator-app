//
//  SecondViewController.swift
//  11.BMI Calculator
//
//  Created by 오현호 on 2021/04/28.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label) // addSubview: UIView, UILabel: UIView
    }
}
