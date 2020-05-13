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
        
// Task 2. Create a line with your middle name and check it for the end of “ich / on”
        
        checkMiddleName (middleName: "Валериевич")
//        checkMiddleName (middleName: "Валериевна")
        
//-----
        
        
    } // End viewDidLoad


// Task 1. Create a string with your name, print the number of characters contained in it.

    func printNameNumber (name:String) {
        print(name.count)
    }
// -----
    
// Task 2. Create a line with your middle name and check it for the end of “ich / on”
            
    func checkMiddleName (middleName:String) {
        let theEnd = middleName.suffix(2)
        if middleName.hasSuffix("ич") || middleName.hasSuffix("на") {
            print("В отчестве \(middleName), присутствует окончание \(theEnd), ")
        }
    }
            
//-----


}

