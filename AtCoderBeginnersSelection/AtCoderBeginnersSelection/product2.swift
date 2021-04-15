//
//  product2.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/04/14.
//

import Foundation

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int($0)! }
}

func product2() {
    let n = readInts()
    
    let sum = n[0] * n[1]
    
    if sum.isMultiple(of: 2) {
        print("Even")
    } else {
        print("Odd")
    }
    
}

//product2()
