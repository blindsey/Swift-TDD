//
//  ViewController.swift
//  TDD
//
//  Created by Ben Lindsey on 7/21/14.
//  Copyright (c) 2014 Ben Lindsey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var centigradeField: UITextField
    @IBOutlet var fahrenheitField: UITextField

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didBeginEditing(sender: UITextField) {
        centigradeField.text = ""
        fahrenheitField.text = ""
    }

    @IBAction func convert() {
        if !fahrenheitField.text.isEmpty {
            let degrees = (fahrenheitField.text as NSString).doubleValue
            let value = String(format: "%.1f", (degrees - 32) * 5 / 9)
            centigradeField.text = value
        } else if !centigradeField.text.isEmpty {
            let degrees = (centigradeField.text as NSString).doubleValue
            let value = String(format: "%.1f", degrees * 9 / 5 + 32)
            fahrenheitField.text = value
        }
    }
}

