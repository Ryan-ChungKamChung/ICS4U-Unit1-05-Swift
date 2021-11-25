//
//  DiceGame.swift
//
//  Created by Ryan Chung
//  Created on 2021-11-18
//  Version 1.0
//  Copyright (c) 2020 Ryan Chung. All rights reserved.
//
//  This program generates a random number and asks the user to guess that
//  number.
//

import Foundation

let boardFootSize = 144.0

func lengthCalculation(width: Double, height: Double) -> Double {
    return boardFootSize / width / height
}

// User prompt
print("Enter a width: ", terminator: "")

// Gathers the user input and makes sure it isn't empty
guard let widthString = readLine(), !widthString.isEmpty else {
    print("Please enter a correct input.")
    exit(001)
}

if let width = Double(widthString) {

    // User prompt
    print("Enter a width: ", terminator: "")

    // Gathers the user input and makes sure it isn't empty
    guard let heightString = readLine(), !heightString.isEmpty else {
        print("Please enter a correct input.")
        exit(001)
    }

    if let height = Double(heightString) {

        let length = lengthCalculation(width: width, height: height)

        print("The length is \(length) m.")
    } else {
        print("Please enter a correct input\n")
    }

} else {
    print("Please enter a correct input\n")
}

print("\nDone.")
