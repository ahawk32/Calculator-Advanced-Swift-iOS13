//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Abrar Hoque on 7/14/20.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation


class CalculatorLogic {
    
    
   
    func calculate(sender: String?, screenText: Double) -> Double {
        
        if let calcMethod = sender {
            if calcMethod == "+/-" {
               return screenText * -1
            }
            else if calcMethod == "AC" {
                return Double("0")!
            }
            else if calcMethod == "%" {
                return 0.01 * screenText           }
           
        }
        return 0.0
        
        
    }
    
    
   
    
    
}
