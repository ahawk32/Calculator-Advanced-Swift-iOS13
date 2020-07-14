//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Abrar Hoque on 7/14/20.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation

class CalculatorLogic {
    
    let cont = ViewController()
    
   
    func calculate(sender: String?){
        
        if let calcMethod = sender {
            if calcMethod == "+/-" {
                cont.displayValue = cont.displayValue * -1
            }
            else if calcMethod == "AC" {
                cont.displayValue = Double("0")!
            }
            else if calcMethod == "%" {
                cont.displayValue *= 0.01            }
        }
        
        
    }
    
    
   
    
    
}
