//
//  ViewController.swift
//  bullseye
//
//  Created by Todd Crone on 9/27/15.
//  Copyright © 2015 Bravo375. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    
    var currentValue = 0
    var targetValue = 0
    
    func startNewRound() {
        targetValue = generateNewTargetValue()
        currentValue = 50
        slider.value = Float(currentValue)
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
    }
    
    func generateNewTargetValue() -> Int {
        return 1 + Int(arc4random_uniform(100))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
        updateLabels()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        let msg = "The value of the slider is: \(currentValue)"
                + "\n The target value is: \(targetValue)"
        
        let alert = UIAlertController(title: "Current Value", message: msg, preferredStyle: .Alert)
        
        let action = UIAlertAction(title: "OK", style: .Default, handler:nil)
        
        alert.addAction(action)
        
        presentViewController(alert, animated: true, completion: nil)
        
        startNewRound()
        updateLabels()
    }

    @IBAction func sliderMoved(slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
}

