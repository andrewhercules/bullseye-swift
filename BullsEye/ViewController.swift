//
//  ViewController.swift
//  BullsEye
//
//  Created by Andrew Hercules on 2014-12-13.
//  Copyright (c) 2014 Andrew Hercules. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var currentValue: Int = 50

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAlert() {
      let message = "The value of the slider is: \(currentValue)"
        let alert = UIAlertController(title: "Hello, world!", message: message, preferredStyle: .Alert)
        let action = UIAlertAction(title: "Awesome", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(slider: UISlider) {
      currentValue = lroundf(slider.value)
    }

}

