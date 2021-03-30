//
//  cardGameForTwo.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/03/31.
//
// https://atcoder.jp/contests/abs/tasks/abc088_b

/*
 3
 2 7 4
 */

import Foundation

func cardGameForTwo() {
    let countNum = Int(readLine()!)!
    var readLineList = readLine()!.split(separator: " ").map { Int($0)! }

    var aliceList: [Int] = []
    var bobList: [Int] = []

    while !readLineList.isEmpty {
        let maxAliceElement = readLineList.max() ?? 0
        aliceList.append(maxAliceElement)
        let _maxAliceElementIndex = readLineList.firstIndex(where: { $0 == maxAliceElement})
        if let maxAliceElementIndex = _maxAliceElementIndex {
            readLineList.remove(at: maxAliceElementIndex )
        }

        let maxBobElement = readLineList.max() ?? 0
        bobList.append(maxBobElement)
        let _maxBobElementIndex = readLineList.firstIndex(where: { $0 == maxBobElement})
        if let maxBobElementIndex = _maxBobElementIndex {
            readLineList.remove(at: maxBobElementIndex )
        }
    }
    
    let aliceSum = aliceList.reduce(into: 0) { (result, score) in
        result += score
    }
//    print("aliceList", aliceList)
//    print("aliceSum", aliceSum)
    
    let bobSum = bobList.reduce(into: 0) { (result, score) in
        result += score
    }
    
//    print("bobList", bobList)
//    print("bobSum", bobSum)
    
    let result = aliceSum - bobSum
    
    print(result)

}

cardGameForTwo()
