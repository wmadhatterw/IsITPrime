//
//  ViewController.swift
//  Is It Prime
//
//  Created by Seth Walton on 8/2/18.
//  Copyright © 2018 Seth Walton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var numberTextField: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    @IBAction func isItPrime(_ sender: Any) {
        
        if let userEnteredString = numberTextField.text {
            
            let userEnteredInteger = Int(userEnteredString)
            if let number = userEnteredInteger {
                
                var isPrime = true
                
                if number == 1{
                    isPrime = false
                }
                
                var i = 2
                
                while i < number {
                    if number % i == 0 {
                        isPrime = false
                    }
                    i += 1
                }
                if isPrime {
                    resultLabel.text = "\(number) is prime!"
                    resultLabel.textColor = UIColor.green
                } else {
                    resultLabel.text = "\(number) is not prime"
                    resultLabel.textColor = UIColor.red
                }
                
            } else {
                resultLabel.text = "Please enter a Positive whole number!"
                resultLabel.textColor = UIColor.red
                
            }// close else enter whole
        }// close button pressed
    
        
        
        
    }// closed view
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

