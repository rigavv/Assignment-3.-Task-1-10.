//
//  ViewController.swift
//  Assignment-3.-Task-1-10
//
//  Created by Viktor Riga on 13.05.2020.
//  Copyright © 2020 Viktor Riga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
// Task 1. Create a string with your name, print the number of characters contained in it.

        printNameNumber (name: "Viktor")
        
// -----
        
    } // End viewDidLoad


// Task 1. Create a string with your name, print the number of characters contained in it. 

    func printNameNumber (name:String) {
        print(name.count)
    }
// -----


}

