//
//  marbles.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/03/27.
//
// https://atcoder.jp/contests/abs/tasks/abc081_a



// 101

import Foundation

func marbles() {
//    print("marbles")
    let marbles = readLine()!
    let marblesList = Array(marbles)
    
    let countOne = marblesList.reduce(into: 0) { (result, zeroOrOne) in
        if zeroOrOne == "1" {
            result += 1
        }
    }
    
    print(countOne)
}

//marbles()

