//
//  generalFunc.swift
//  MultiCalculator
//
//  Created by Zhuofan Tang on 11/6/16.
//  Copyright © 2016 Zhuofan Tang. All rights reserved.
//

import Foundation

func addValue(currentValueArr: inout [String], isSecondValue: inout Bool, pressvalue: Int ){
    if isSecondValue{
        currentValueArr[1].append(String(pressvalue))
    }else{
        currentValueArr[0].append(String(pressvalue))
    }
}


