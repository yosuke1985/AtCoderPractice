//
//  coins.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/03/28.
//
// https://atcoder.jp/contests/abs/tasks/abc087_b

import Foundation
/*
 
 500円　１００円　５０円
2
2
2
100
 
 */

func coins() {
    var fiveHundredNum = Int(readLine()!)!
    var hundredNum = Int(readLine()!)!
    var fiftyNum = Int(readLine()!)!
    var targetNum = Int(readLine()!)!
    
//    print(1...fiveHundredNum)
    var countTotal = 0
    
    for fiveHundred in 0...fiveHundredNum {
        for hundred in 0...hundredNum {
            for fifty in 0...fiftyNum {
//                print("total", fiveHundred * 500 + hundred * 100 + fifty * 50)
                if fiveHundred * 500 + hundred * 100 + fifty * 50 == targetNum {
                    countTotal += 1
                }
            }
        }
    }
    
    
    print(countTotal)
}

//coins()
