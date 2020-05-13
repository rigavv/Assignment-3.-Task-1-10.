//
//  ViewController.swift
//  Assignment-3.-Task-1-10
//
//  Created by Viktor Riga on 13.05.2020.
//  Copyright © 2020 Viktor Riga. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
// Task 1. Create a string with your name, print the number of characters contained in it.
        print("Task 1")
        printNameNumber (name: "Viktor")
        print("______")
// -----
        
// Task 2. Create a line with your middle name and check it for the end of “ich / on”
        print("Task 2")
//        checkMiddleName (middleName: "Валериевич")
        checkMiddleName (middleName: "Валериевна")
        print("______")
//-----
        
// Task 3. Create a line where your First Name Last Name “IvanVasilevich". You need to split into two separate lines from the previous one to create a third, where they will both be separated by a space
        print("Task 3")
        
        separateFullName(fullName: "ViktorValerievich")
        
        print("______")
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
        print(theEnd)
        if middleName.hasSuffix("ич") || middleName.hasSuffix("на") {
            print("В отчестве \(middleName), присутствует окончание -  \(theEnd)")
        }
    }
            
//-----
    
// Task 3. Create a line where your First Name Last Name “IvanVasilevich". You need to split into two separate lines from the previous one to create a third, where they will both be separated by a space
                    
    func separateFullName (fullName: String) {
        print(fullName)
        var name = ""
        var surname = ""
        var result = ""
        for i in fullName.reversed() {
            if i.isUppercase, let index = fullName.firstIndex(of: i)  {
                surname = String(fullName.suffix(from: index))
                name = String(fullName.prefix(upTo: index))
                result = name + " " + surname
                break
            }
        }
        print("Имя-",name,"Фамилия-",surname,"Имя с фамилией-", result)
    }
    
//-----
    
    


}

