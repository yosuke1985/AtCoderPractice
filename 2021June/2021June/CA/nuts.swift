//
//  nuts.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/19.
// https://atcoder.jp/contests/abc204/tasks/abc204_c

import Foundation


func nuts() {
    let N = Int(readLine()!)!
    let readlist = readLine()!.split(separator: " ").map { Int($0)! }
    
    var sum = 0
    for i in readlist {
        if i - 10 > 0 {
            sum += i - 10
        }
    }
    print(sum)
    
}

//nuts()
