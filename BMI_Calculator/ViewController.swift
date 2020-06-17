//
//  ViewController.swift
//  BMI_Calculator
//
//  Created by 木山傑將 on 2020/06/17.
//  Copyright © 2020 木山傑將. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hight: UITextField!
    
    @IBOutlet weak var weight: UITextField!
    
    @IBOutlet weak var BMItext: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.hight.keyboardType = UIKeyboardType.numberPad
        self.weight.keyboardType = UIKeyboardType.numberPad
    }

    @IBAction func button(_ sender: Any) {
        let dhight = Double(hight.text!)
        let dweight = Double(weight.text!)
        let dhight2 = dhight! * dhight!
        let bmi = String(dweight! / dhight2)
        
        BMItext.text = ("あなたのBMIは" + bmi + "です")

    }
}
