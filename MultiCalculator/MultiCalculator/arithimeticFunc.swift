//
//  arithimeticFunc.swift
//  MultiCalculator
//
//  Created by Zhuofan Tang on 11/6/16.
//  Copyright © 2016 Zhuofan Tang. All rights reserved.
//

import Foundation


func basicCalculate(currentValueArr: inout [String]){
    if currentValueArr[4] == "+" {

        let result = Float64(currentValueArr[1])! + Float64(currentValueArr[2])!
        currentValueArr[3] = String(result)
        
    }else if currentValueArr[4] == "-"{
        let result = Float64(currentValueArr[1])! - Float64(currentValueArr[2])!
        currentValueArr[3] = String(result)
    }else if currentValueArr[4] == "×"{
        let result = Float64(currentValueArr[1])! * Float64(currentValueArr[2])!
        currentValueArr[3] = String(result)
    }else if currentValueArr[4] == "÷"{
        let result = Float64(currentValueArr[1])! / Float64(currentValueArr[2])!
        currentValueArr[3] = String(result)
    }else{
        currentValueArr[3] = ""
    }
}
