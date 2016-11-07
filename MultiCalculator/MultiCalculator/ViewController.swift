//
//  ViewController.swift
//  MultiCalculator
//
//  Created by Zhuofan Tang on 11/6/16.
//  Copyright © 2016 Zhuofan Tang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //ViewController Elements
    
    @IBOutlet weak var displayBar: UILabel!
    
    
    //initialize some number values
    var num0 = "0"
    var num1 = "1"
    var num2 = "2"
    var num3 = "3"
    var num4 = "4"
    var num5 = "5"
    var num6 = "6"
    var num7 = "7"
    var num8 = "8"
    var num9 = "9"
    var plus = "+"
    var minus = "-"
    var multi = "×"
    var defac = "÷"
    var equal = "="
    
    //initialzie a array of strings to store values
    var currentValueArr: [String] = []
    var initialValue: String = ""
    var currentValue1: String = ""
    var currentvalue2: String = ""
    var resultValue: String = ""
    var operationSign: String = ""
    
    //initialize some value to determine what to do with the numbers
    var whichValue: Int = 0
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //initialize currentList Arr
        currentValueArr.append(initialValue) //whichValue = 0
        currentValueArr.append(currentValue1)  //whichValue = 1
        currentValueArr.append(currentvalue2)  //whichValue = 2
        currentValueArr.append(resultValue)  //whichValue = 3
        currentValueArr.append(operationSign)  //whichValue = 4
        self.allClearPress()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func num0Press() {
        addValue(currentValueArr: &currentValueArr, whichValue: &whichValue, pressvalue: num0)
        displayBarUpdate()
    }

    @IBAction func num1Press() {
        addValue(currentValueArr: &currentValueArr, whichValue: &whichValue, pressvalue: num1)
        displayBarUpdate()
    }
    
    @IBAction func num2Press() {
        addValue(currentValueArr: &currentValueArr, whichValue: &whichValue, pressvalue: num2)
        displayBarUpdate()
    }
    
    @IBAction func num3Press() {
        addValue(currentValueArr: &currentValueArr, whichValue: &whichValue, pressvalue: num3)
        displayBarUpdate()
    }
    
    @IBAction func num4Press() {
        addValue(currentValueArr: &currentValueArr, whichValue: &whichValue, pressvalue: num4)
        displayBarUpdate()
    }
    
    @IBAction func num5Press() {
        addValue(currentValueArr: &currentValueArr, whichValue: &whichValue, pressvalue: num5)
        displayBarUpdate()
    }
    
    @IBAction func num6Press() {
        addValue(currentValueArr: &currentValueArr, whichValue: &whichValue, pressvalue: num6)
        displayBarUpdate()
    }
    
    @IBAction func num7Press() {
        addValue(currentValueArr: &currentValueArr, whichValue: &whichValue, pressvalue: num7)
        displayBarUpdate()
    }
    
    @IBAction func num8Press() {
        addValue(currentValueArr: &currentValueArr, whichValue: &whichValue, pressvalue: num8)
        displayBarUpdate()
    }
    
    @IBAction func num9Press() {
        addValue(currentValueArr: &currentValueArr, whichValue: &whichValue, pressvalue: num9)
        displayBarUpdate()
    }
    
    @IBAction func allClearPress() {
        //clean up everything
        displayBar.text = "Enter a number"
        for i in 0...4{
            currentValueArr[i] = ""
        }
        whichValue = 0
    }
    
    @IBAction func equalPress() {
        if whichValue == 2 {
            getResult(currentValueArr: &currentValueArr, whichValue: &whichValue)
            displayBarUpdate()
        }
    }
    
    @IBAction func multiPress() {
        if whichValue == 1{
            addOperation(currentValueArr: &currentValueArr, whichValue: &whichValue, pressvalue: multi)
            displayBarUpdate()
        }else if whichValue == 2 {
            additionalOperationSignPress(pressValue: multi)
        }
    }
    
    @IBAction func defactPress() {
        if whichValue == 1{
            addOperation(currentValueArr: &currentValueArr, whichValue: &whichValue, pressvalue: defac)
            displayBarUpdate()
        }else if whichValue == 2 {
            additionalOperationSignPress(pressValue: defac)
        }
    }
    
    @IBAction func minusPress() {
        if whichValue == 1{
            addOperation(currentValueArr: &currentValueArr, whichValue: &whichValue, pressvalue: minus)
            displayBarUpdate()
        }else if whichValue == 2 {
            additionalOperationSignPress(pressValue: minus)
        }
    }
    
    @IBAction func plusPress() {
        if whichValue == 1 {
            addOperation(currentValueArr: &currentValueArr, whichValue: &whichValue, pressvalue: plus)
            displayBarUpdate()
        } else if whichValue == 2 {
            additionalOperationSignPress(pressValue: plus)
        }
    }
    
    @IBAction func pointPress() {
    }
    
    @IBAction func signChangePress() {
    }
    
    /////////////////////
    //helper functions///
    /////////////////////
    
    //add a function to update display
    func displayBarUpdate(){
        displayBar.text = currentValueArr[whichValue]
    }
    
    func additionalOperationSignPress(pressValue: String){
        basicCalculate(currentValueArr: &currentValueArr)
        whichValue = 3  //temporary set whichValue in order print out result
        displayBarUpdate()
        
        //set up the values
        currentValueArr[1] = currentValueArr[3]
        currentValueArr[3] = ""
        currentValueArr[2] = ""
        currentValueArr[4] = pressValue
        whichValue = 4
    }
}

