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
        whichValue = 3
    }
    currentValueArr[whichValue].append(pressvalue)
}

func addOperation(currentValueArr: inout [String], whichValue: inout Int, pressvalue: String){
    whichValue = 4
    currentValueArr[whichValue].append(pressvalue)
}



