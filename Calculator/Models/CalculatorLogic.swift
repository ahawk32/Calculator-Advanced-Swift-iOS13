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
    
    private var intermediateCalculation: (n1: Double, calcMethod: String)?
    
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
                
            } else if symbol == "+" {
                if let rNum = number {
                    intermediateCalculation?.num = rNum
                    print(intermediateCalculation?.num ?? "not it")
                    print("cash")
                    return rNum
                }
                print("no cash")
                return number!
                
                
                
            } else if symbol == "=" {
                let result = (intermediateCalculation?.num ?? 4.0) + (number ?? 2.0)
                return result
                
            }
            
        }
           
        return nil
        
    }
    
    
   
    
    
}
