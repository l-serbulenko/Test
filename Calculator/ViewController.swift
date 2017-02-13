//
//  ViewController.swift
//  Calculator
//
//  Created by Leonid M.Serbulenko on 22/12/2016.
//  Copyright © 2016 Leonid M.Serbulenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    var isMiddle=false

    @IBAction func touchDigit(_ sender: UIButton){
        let digit=sender.currentTitle!
        if isMiddle{
            let textDisplay=display!.text!
        display.text=textDisplay+digit
        } else {
       display.text = digit }
        isMiddle=true
    }

    @IBAction func performOperation(_ sender: UIButton) {
        isMiddle=false
        if let mathSim = sender.currentTitle{
            if mathSim=="𝛑" {
                display.text=String(M_PI)
            }
        }
    }
}

