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
        printNameNumber(name: "Viktor")
        print("______")
// -----
        
// Task 2. Create a line with your middle name and check it for the end of “ich / on”
        print("Task 2")
//        checkMiddleName (middleName: "Валериевич")
        checkMiddleName(middleName: "Валериев")
        print("______")
//-----
        
// Task 3. Create a line where your First Name Last Name “IvanVasilevich". You need to split into two separate lines from the previous one to create a third, where they will both be separated by a space
        print("Task 3")
        separateFullName(fullName: "ViktorNikolaevich")
        print("______")
//-----

// Task 4. Output the string in a mirror. Axis → bcO without using reverse (character by character)
        print("Task 4")
        stringMirror(char: "Ось")
        print("______")
//-----
        
// Task 5. Add commas to the line as the calculator places them.
        print("Task 5")
//        addCommas (numberString: "1234567")
        addCommas(numberString: "12345")
        print("______")
//-----
        
// Task 6. Check the password for reliability from 1 to 5
        print("Task 6")
        passwordReliability(pass: "Pa$$w0rD")
        print("______")
//-----
        
// Task 7. Sorting an array by a non-built-in method in ascending order + delete duplicates [9, 1, 2, 5, 1, 7]
        print("Task 7")
        deleteDuplicates (arr: [9, 1, 2, 5, 1, 7])
        print("______")
//-----
        
// Task 8. Write a method that will translate the string into transliteration.
        print("Task 8")
        transliterationMethod(char: "Зимняя рыбалка удалась на славу! Язь")
        print("______")
//-----
        
// Task 9. Make a selection from an array of strings containing the specified string.
        print("Task 9")
        selectionFromArray(arr:["Vada","Sevan","Aklazhan"],specStr: "va")
        print("______")
//-----
       
// Task 10. Set <String> - antimat [“fuck”, “fak”] “hello my fak” “hello my ***” use Set or NSSet for antimat - exclude from the sentence all words contained in the set

        print("Task 10")
        excludeFromTheSentence(char: "Hey! Motherfucker what the fuck do you think you're doing? ")
        print("______")
//-----
        
    } // End viewDidLoad


// Task 1. Create a string with your name, print the number of characters contained in it.

    func printNameNumber(name:String) {
        print(name.count)
    }
// -----
    
// Task 2. Create a line with your middle name and check it for the end of “ich / on”
            
    func checkMiddleName(middleName:String) {
        let theEnd = middleName.suffix(2)
        print(theEnd)
        if middleName.hasSuffix("ич") || middleName.hasSuffix("на") {
            print("В отчестве \(middleName), присутствует окончание -  \(theEnd)")
        }
        else {
            print("В отчестве \(middleName),  отсутствует окончание")
        }
    }
            
//-----
    
// Task 3. Create a line where your First Name Last Name “IvanVasilevich". You need to split into two separate lines from the previous one to create a third, where they will both be separated by a space
                    
    func separateFullName(fullName: String) {
        print(fullName)
        var name = ""
        var surname = ""
        var result = ""
        for i in fullName.reversed() {
            if i.isUppercase, let indx = fullName.firstIndex(of: i)  {
                print(i.isUppercase)
                print(i)
                surname = String(fullName.suffix(from: indx))
                name = String(fullName.prefix(upTo: indx))
                result = name + " " + surname
                break
            }
        }
        print("Имя-",name)
        print("Фамилия-",surname)
        print("Имя с фамилией-", result)
    }
    // If the middle name and first name begin with the same letter, the algorithm does not work ...
    
//-----
    
// Task 4. Output the string in a mirror. Axis → bcO without using reverse (character by character).
    func stringMirror(char: String){
        print(char)
        var mirrorString = ""
        for i in char {
            mirrorString = String(i) + mirrorString
        }
        print(mirrorString)
    }
//-----
    
// Task 5. Add commas to the line as the calculator places them.
            
    func addCommas(numberString: String) {
        var temp = ""
        for (index, char) in numberString.reversed().enumerated() {
            if index != 0 && index % 3 == 0 {
                temp.append(",")
            }
            temp.append(String(char))
        }
        print(String(temp.reversed()))
    }
//-----

// Task 6. Check the password for reliability from 1 to 5
                
    func passwordReliability(pass: String) {
        var score = 0
        if pass.rangeOfCharacter(from: .decimalDigits) != nil { score += 1 }
        if pass.rangeOfCharacter(from: .lowercaseLetters) != nil { score += 1}
        if pass.rangeOfCharacter(from: .uppercaseLetters) != nil { score += 1}
        if pass.rangeOfCharacter(from: .symbols) != nil { score += 1}
        if score == 4 { score = 5}
        print("Надежность пароля по шкале от 1 до 5 =",score)
    }
//-----

// Task 7. Sorting an array by a non-built-in method in ascending order + delete duplicates [9, 1, 2, 5, 1, 7]
                          
    func deleteDuplicates(arr: [Int]){
        print(arr)
        var arr = Array(arr)
        for start in 0..<arr.count {
            for end in 0..<(arr.count - 1) {
                if (arr[start] < arr[end]) {
                    let cloud = arr[start]
                    arr[start] = arr[end]
                    arr[end] = cloud
                }
            }
        }
       print("Сортировка по возрастанию = \(arr)")
       print("Убираем дубликаты")
       print(arr.enumerated().filter{ arr.firstIndex(of: $0.1) == $0.0 }.map{ $0.1 })
    }
                     
//-----

    // Task 8. Write a method that will translate the string into transliteration.
    
    func transliterationMethod(char: String) {
        let dictionary = [
            "а" : "a",
            "б" : "b",
            "в" : "v",
            "г" : "g",
            "д" : "d",
            "е" : "e",
            "ё" : "yo",
            "ж" : "zh",
            "з" : "z",
            "З" : "Z",
            "и" : "i",
            "й" : "j",
            "к" : "k",
            "л" : "l",
            "м" : "m",
            "н" : "n",
            "о" : "o",
            "п" : "p",
            "р" : "r",
            "с" : "s",
            "т" : "t",
            "у" : "u",
            "ф" : "f",
            "х" : "h",
            "ц" : "c",
            "ч" : "ch",
            "ш" : "sh",
            "щ" : "shh",
            "ъ" : "`",
            "ы" : "y",
            "ь" : "`",
            "э" : "ea",
            "ю" : "ju",
            "я" : "ya",
            "Я" : "YA",
            "!" : "!",
            " " : " "
        ]
        var temp = ""
        for i in char {
            for key in dictionary.keys {
                if String(i) == String(key) {
                    temp += dictionary[String(i)] ?? ""
                }
            }
        }
        print(temp)
    }
            
    //-----
    
// Task 9. Make a selection from an array of strings containing the specified string
                            
    func selectionFromArray(arr:[String],specStr:String) {
        print(arr.filter { (i) -> Bool in
            i.lowercased().contains(specStr.lowercased())
        })
    }
//-----

    // Task 10. Set <String> - antimat [“fuck”, “fak”] “hello my fak” “hello my ***” use Set or NSSet for antimat - exclude from the sentence all words contained in the set


    func excludeFromTheSentence(char: String) {
        print(char)
        let setSwearWords : Set<String> = ["fuck","Motherfucker","Son of a bitch","Poop","Asshole"]
        var arrChar = char.components(separatedBy: " ") // как задать несколько сепараторов?
        for x in arrChar {
            for y in setSwearWords {
                if x == y {
                    arrChar[arrChar.firstIndex(of: x)!] = "***"
                }
            }
        }
        let freeSwearStr = arrChar.joined(separator: " ")
        print ("Без матов - \(freeSwearStr)")
    }
                   
    //-----
    
}
