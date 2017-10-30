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
/*
    func numberPushed(number : Int){
        calculation += String(number)
    }
    
    func operationPushed(givenOperation : String){
        
        //add "." only if calculation doesnt contain it already
        if (givenOperation == ".") && (!calculation.contains(".")){
            calculation += "."
        }
        else if givenOperation != "="{
            input1 = calculation
            calculation = ""
            operation = givenOperation
        }
        else{
            calculate()
        }
        
    }
    

    func calculate(){
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
        
    }
 */
    /*https://stackoverflow.com/questions/37870701/how-to-use-one-ibaction-for-multiple-buttons-in-swift*/
    @IBAction func numberButton(_ sender: UIButton) {
     /*
        if (sender.tag >= 0) && (sender.tag <= 9){
            numberPushed(number: sender.tag)
        }
        else{
            switch sender.tag{
                
            case -1:// *
                operation = "*"
                operationPushed(givenOperation: operation)
            case -2:// C
                operation = ""
                operationPushed(givenOperation: operation)
            case -3:// +
                operation = "+"
                operationPushed(givenOperation: operation)
            case -4:// -
                operation = "-"
                operationPushed(givenOperation: operation)
            case -5:// /
                operation = "/"
                operationPushed(givenOperation: operation)
            case -6:// .
                operation = "."
                operationPushed(givenOperation: operation)
                
            case -7:// =
                calculate()
                
            default:
                break
            }
            
        }
        
 
    */
        
     //----------------------------------------------
        
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
            /*https://stackoverflow.com/questions/26719180/swift-resolving-a-math-operation-in-a-string*/
            
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

