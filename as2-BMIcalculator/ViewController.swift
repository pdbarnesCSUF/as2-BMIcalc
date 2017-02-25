//
//  ViewController.swift
//  as2-BMIcalculator
//
//  Created by pdbarnes on 2/21/17.
//  Copyright © 2017 pdbarnes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var metricSwitch: UISwitch!
    @IBOutlet weak var rangeLabel: UILabel!
    @IBOutlet weak var figureImageView: UIImageView!
    @IBAction func calculateAction(_ sender: Any) {
        var height:Double = Double(heightTextField.text!)!
        var weight:Double = Double(weightTextField.text!)!
        var bmi:Double
        if !metricSwitch.isOn
        {
            //convert to metric
            //height
            height *= 2.54
            //weight
            weight /= 2.2
        }
        height /= 100
        bmi = weight/(height*height)
        //severe thinness
        if bmi < 16
        {
            rangeLabel.text = "" + String(format:"%.2f",bmi) + " Severe Thinness"
            figureImageView.image = UIImage(named: "thin3.png")
        }
        //moderate thinness
        else if bmi < 17
            {
                rangeLabel.text = "" + String(format:"%.2f",bmi) + " Moderate Thinness"
                figureImageView.image = UIImage(named: "thin2.png")
        }
        //mild thinness
        else if bmi < 18.5
        {
            rangeLabel.text = "" + String(format:"%.2f",bmi) + " Mild Thinness"
            figureImageView.image = UIImage(named: "thin1.png")
        }
        //normal range
        else if bmi < 25
        {
            rangeLabel.text = "" + String(format:"%.2f",bmi) + " Normal Range"
            figureImageView.image = UIImage(named: "normal.png")
        }
        //overweight
        else if bmi < 30
        {
            rangeLabel.text = "" + String(format:"%.2f",bmi) + " Overweight"
            figureImageView.image = UIImage(named: "over.png")
        }
        //obese class I(moderate)
        else if bmi < 35
        {
            rangeLabel.text = "" + String(format:"%.2f",bmi) + " Obese Class I(Moderate)"
            figureImageView.image = UIImage(named: "ob1.png")
        }
        //obese class II(severe)
        else if bmi < 40
        {
            rangeLabel.text = "" + String(format:"%.2f",bmi) + " Obese Class II(Severe)"
            figureImageView.image = UIImage(named: "ob2.png")
        }
        // obese class III(very severe)
        else
        {
            rangeLabel.text = "" + String(format:"%.2f",bmi) + " Obese Class III(Very Severe)"
            figureImageView.image = UIImage(named: "ob3.png")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

