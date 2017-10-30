//
//  ViewController.swift
//  Calculaattori
//
//  Created by Koulutus on 20.9.2017.
//  Copyright © 2017 MikkoS. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    
    var calculation = ""
    var input1 = ""
    var operation = ""

    //Label that shows calculation
    @IBOutlet weak var showCalcLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func numberButton(_ sender: UIButton) {
        
        switch sender.tag{
            
        case 0...9:// numbers 0-9
            calculation += String(sender.tag)
        case -1:// *
            input1 = calculation
            calculation = ""
            operation = "*"
        case -2:// C
            input1 = ""
            calculation = ""
            operation = ""
        case -3:// +
            input1 = calculation
            calculation = ""
            operation = "+"
        case -4:// -
            input1 = calculation
            calculation = ""
            operation = "-"
            
        case -5:// /
            input1 = calculation
            calculation = ""
            operation = "/"
            
        case -6:// .
            
            //add "." only if calculation doesnt contain it already
            if !calculation.contains("."){
                 calculation += "."
            }
            
           
            
        case -7:// =
            
            switch operation{
            case "*":
                calculation = String(Double(input1)! * Double(calculation)!)
            case "+":
                calculation = String(Double(input1)! + Double(calculation)!)
            case "-":
                calculation = String(Double(input1)! - Double(calculation)!)
            case "/":
                calculation = String(Double(input1)! / Double(calculation)!)
            default:
                break
            }

        default:
            break
        }
        
 
 
        showCalcLabel.text = calculation

    }


}

