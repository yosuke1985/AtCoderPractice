//
//  DifferenceMax.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/30.
//
// https://atcoder.jp/contests/abc196/tasks/abc196_a

import Foundation

func DifferenceMax() {
    let ints = readLine()!.split(separator: " ").map { Int($0)! }
    let ints2 = readLine()!.split(separator: " ").map { Int($0)! }


    print(ints[1]-ints2[0])
    
    
}

//DifferenceMax()
