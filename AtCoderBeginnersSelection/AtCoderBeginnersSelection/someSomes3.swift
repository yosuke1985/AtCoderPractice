//
//  someSums3.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/04/16.
//

import Foundation


func someSums3() {
    let numList = readLine()!.split(separator: " ").map { Int($0)! }
    let n = numList[0]
    let a = numList[1]
    let b = numList[2]
    
    var totalSum = 0
    
    // 1...n
    for i in 1...n {
        let numStr = "\(i)"
        let strArray = Array(numStr)
//        print(strArray)
        let sum = strArray.reduce(into: 0) { (result, numChar) in
            result += Int(String(numChar)) ?? 0
        }
        
        if a...b ~= sum {
            totalSum += i
        }
    }
    
    print(totalSum)
    
}

//someSums3()
