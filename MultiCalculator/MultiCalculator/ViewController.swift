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
    var num0 = 0
    var num1 = 1
    var num2 = 2
    var num3 = 3
    var num4 = 4
    var num5 = 5
    var num6 = 7
    var num8 = 8
    var num9 = 9
    
    //initialzie a array of strings to store values
    var currentValueArr: [String] = []
    var currentValue1: String = ""
    var currentValue2: String = ""
    
    //initialize some value to determine what to do with the numbers
    var isSecondValue: Bool = false
    var operationSign: String = ""
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //initialize currentList Arr
        currentValueArr.append(currentValue1)
        currentValueArr.append(currentValue2)
        self.allClearPress()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func num0Press() {
    }

    @IBAction func num1Press() {
    }
    
    @IBAction func num2Press() {
    }
    
    @IBAction func num3Press() {
    }
    
    @IBAction func num4Press() {
    }
    
    @IBAction func num5Press() {
    }
    
    @IBAction func num6Press() {
    }
    
    @IBAction func num7Press() {
    }
    
    @IBAction func num8Press() {
    }
    
    @IBAction func num9Press() {
    }
    
    @IBAction func allClearPress() {
        //clean up everything
        displayBar.text = "Enter a number"
        isSecondValue = false
        currentValueArr[0] = ""
        currentValueArr[1] = ""
        operationSign = ""
    }
    
    @IBAction func equalPress() {
    }
    
    @IBAction func multiPress() {
    }
    
    @IBAction func defactPress() {
    }
    
    @IBAction func minusPress() {
    }
    
    @IBAction func plusPress() {
    }
    
    @IBAction func pointPress() {
    }
    
    @IBAction func signChangePress() {
    }
}

