//
//  generalFunc.swift
//  MultiCalculator
//
//  Created by Zhuofan Tang on 11/6/16.
//  Copyright © 2016 Zhuofan Tang. All rights reserved.
//

import Foundation

func addValue(currentValueArr: inout [String], whichValue: inout Int, pressvalue: String ){
    if whichValue == 0{
        whichValue = 1
    }else if whichValue == 4 {
        whichValue = 2
    }
    currentValueArr[whichValue] = currentValueArr[whichValue] + pressvalue
}

func addOperation(currentValueArr: inout [String], whichValue: inout Int, pressvalue: String){
    whichValue = 4
    currentValueArr[whichValue] = pressvalue
}


func getResult(currentValueArr: inout [String], whichValue: inout Int){
    whichValue = 3
    basicCalculate(currentValueArr: &currentValueArr)
    
}



