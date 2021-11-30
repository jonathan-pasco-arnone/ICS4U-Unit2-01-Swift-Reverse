//
//  Created by Jonathan Pasco-Arnone
//  Created on 2021-11-30
//  Version 1.0
//  Copyright (c) 2021 MTHS. All rights reserved.
//
//  This program calculates the amount of time to reheat a
//  specific quantity of a specific type of food.

import Foundation

// Making an error case.
enum MyError: Error {
    case invalidInteger(String)
}

func reverse(text: String) -> String {
    // Variables.
    var returnValue: String = ""

    if text.count == 0 {
        returnValue = text
    } else {
        /* This gets all the index's (characters) after the starting one
        * (aka the first character)
        */
        let range = text.index(after: text.startIndex)..<text.endIndex
        returnValue = reverse(text: String(text[range]))
            + String(text[text.startIndex])
    }

    return returnValue

}

var text: String

// Inputs
print("Please enter some string to be reversed: ")
let textInput: String = readLine()!

let reversedText: String = (reverse(text: textInput))

print("The reversed string is: " + reversedText)

print("\nDone.")
