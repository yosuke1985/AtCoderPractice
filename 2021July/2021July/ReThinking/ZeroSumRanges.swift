//
//  ZeroSumRanges.swift
//  2021July
//
//  Created by Yosuke Nakayama on 2021/07/21.
//

import Foundation

func ZeroSumRanges() {
    let N = Int(readLine()!)!
    let aList = readLine()!.split(separator: " ").map { Int($0)! }

    var sumList: [Int] = [0]
    var result = 0

    print(N)
    print(aList)
    
    for (index, element) in aList.enumerated() {
        sumList.append(element+sumList[index])
    }
    
    print(sumList)
    
    for i in 2...sumList.count {
        var start = 0
        let range = start..<(start+i)
        
        while start+i <= sumList.count {
            if sumList[range].reduce(0, +) == 0 {
                result += 1
            }
            
            start += 1
        }
        
        
    }
    
    print("result", result)
    
}

//ZeroSumRanges()


