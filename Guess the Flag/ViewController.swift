//
//  ViewController.swift
//  Guess the Flag
//
//  Created by Fabio on 03/03/2019.
//  Copyright © 2019 JohnMutina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    // initialize array that contains flags
    var countries = [String]()
    // initialize score
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add all countries to the countries array
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        // set a border width and its color
        button1.layer.borderWidth = 1
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderWidth = 1
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderWidth = 1
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        // call the askQuestion method
        askQuestion()
        
    }
    
    // when a new question is asked
    func askQuestion() {
        // set every button image to an image coming from the countries array
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
    }


}

