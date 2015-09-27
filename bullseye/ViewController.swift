//
//  ViewController.swift
//  bullseye
//
//  Created by Todd Crone on 9/27/15.
//  Copyright © 2015 Bravo375. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        let msg = "The value of the slider is: \(currentValue)"
        
        let alert = UIAlertController(title: "Current Value", message: msg, preferredStyle: .Alert)
        
        let action = UIAlertAction(title: "OK", style: .Default, handler:nil)
        
        alert.addAction(action)
        
        presentViewController(alert, animated: true, completion: nil)
    }

    @IBAction func sliderMoved(slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
}

