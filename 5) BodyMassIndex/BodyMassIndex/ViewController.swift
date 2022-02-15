//
//  ViewController.swift
//  BodyMassIndex
//
//  Created by macbook on 15.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightText: UITextField!
    @IBOutlet weak var heightText: UITextField!
    @IBOutlet weak var bmiLable: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButtonPressed(_ sender: Any) {
        bodyMassIndex(weight : Double(weightText.text!) ?? 0, height : Double(heightText.text!) ?? 0)
        
    }
    
    func bodyMassIndex(weight : Double, height : Double) -> String {
        let heightMeter = height * 10
        let calculate = weight / (heightMeter * heightMeter)
        var bmi = "Your body mass index is \(calculate)"
        bmiLable.text = String(bmi)
        return bmi
        
    }
    
}

