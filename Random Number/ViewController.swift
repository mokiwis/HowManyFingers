//
//  ViewController.swift
//  Random Number
//
//  Created by Moisés Cervantes on 04/08/15.
//  Copyright (c) 2015 moises. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guess: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func guessButton(sender: AnyObject) {
        
        var randomNumber = arc4random_uniform(6)
        
        var guessInt = guess.text.toInt()
        
        if guessInt != nil {
            
            if Int(randomNumber) == guessInt {
                
                resultLabel.text = "Correcto!"
                
            } else {
                
                resultLabel.text = "No! la respuesta correcta era \(randomNumber)"
            }
            
        } else {
            
            resultLabel.text = "Ingresa un número del 0 al 5"
            
        }
        
        println(guess.text)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

