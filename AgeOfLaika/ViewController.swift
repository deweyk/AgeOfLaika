//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Dewey Kang on 10/18/14.
//  Copyright (c) 2014 BitFountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var convertedTextDogYears: UITextField!
    @IBOutlet weak var enterTextHumanYears: UITextField!
    
    @IBOutlet weak var conversionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertToDogYears(sender: UIButton) {
       
        let humanYearsFromTextField = enterTextHumanYears.text.toInt()!
        
        enterTextHumanYears.text = ""
        enterTextHumanYears.resignFirstResponder()
        
        conversionButton.setTitle("Converted!", forState: UIControlState.Normal)
        
        convertedTextDogYears.hidden = false
        convertedTextDogYears.text = " \(humanYearsFromTextField * 7)" + " Human Years!"
        
    }

}

