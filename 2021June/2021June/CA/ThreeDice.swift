//
//  ThreeDice.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/22.
//
// https://atcoder.jp/contests/abc202/tasks

import Foundation

func ThreeDice() {
    let readlist = readLine()!.split(separator: " ").map { Int($0)! }
    let sum = 21 - readlist.reduce(0, +)
    
    print(sum)
}

//ThreeDice()
