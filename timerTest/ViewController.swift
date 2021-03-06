//
//  ViewController.swift
//  timerTest
//
//  Created by Tarun Athuluru on 7/16/20.
//  Copyright © 2020 Jaya Athuluru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var OurTimer = Timer()
    var TimerDisplayed = 0
    
    
    @IBOutlet weak var Label: UILabel!
    
    
    
    @IBAction func StartBTN(_ sender: Any) { OurTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Action), userInfo: nil, repeats: true)
    }
    
    
    
    
    @IBAction func PauseBTN(_ sender: Any) {
        OurTimer.invalidate()
    }
    
    
    @IBAction func ResetBTN(_ sender: Any) {
        OurTimer.invalidate()
        TimerDisplayed = 0
        Label.text = "0"
    }
    
    @objc func Action() {

           TimerDisplayed += 1
           Label.text = String(TimerDisplayed)
       }
    
    
    
    
    
    override func viewDidLoad() {
        
        
        // Do any additional setup after loading the view.
    }


}

