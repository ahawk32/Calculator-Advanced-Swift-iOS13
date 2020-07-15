//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Abrar Hoque on 7/14/20.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation


struct CalculatorLogic {
    
    private var number: Double?
    
    var intermediateCalculation: (n1: Double, calcMethod: String)?
    
    mutating func setNumber(_ number: Double){
        self.number = number
    }
    
   
    mutating func calculate(symbol: String) -> Double? {
        
        if let n = number {
            if symbol == "+/-" {
               return n * -1
            }
            else if symbol == "AC" {
                return Double("0")
            }
            else if symbol == "%" {
                return 0.01 * n
                
            } else if symbol == "=" {
                
                return performTwoNumCalculation(n2: n)
               
            }
            else  {
                intermediateCalculation = (n1: n, calcMethod: symbol)
                return n
            }
            
        }
           
        return nil
        
    }
    
    private func performTwoNumCalculation(n2: Double) -> Double? {
        
        if let n1 = intermediateCalculation?.n1, let operation = intermediateCalculation?.calcMethod {
            
            switch operation {
            case "+": return n1 + n2
            case "-": return n1 - n2
            case "×": return n1 * n2
            case "÷": return n1/n2
            default:
                fatalError("The operation passed does not meet the cases")
            }
    }
    
    return nil
}





}
