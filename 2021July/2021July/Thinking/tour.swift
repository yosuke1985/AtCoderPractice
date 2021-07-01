//
//  tour.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/19.
//
// https://atcoder.jp/contests/abc204/tasks/abc204_c

import Foundation


func tour() {
    let readlineList = readLine()!.split(separator: " ").map { Int($0)! }
    let N = readlineList[0]
    let M = readlineList[1]
    let numbers = (0..<M).map { _ in readLine()!.split(separator: " ").map{ Int($0)! } }
    
    
    print(N, M)
    print(numbers)
    
}

//tour()
