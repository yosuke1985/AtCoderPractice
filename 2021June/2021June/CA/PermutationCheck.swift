//
//  PermutationCheck.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/18.
// https://atcoder.jp/contests/abc205/tasks

import Foundation

func PermutationCheck() {
    let N = Int(readLine()!)!
    let numList = readLine()!.split(separator: " ").map { Int($0)! }
    
    var setList = Set<Int>()
    
    for i in numList {
        setList.insert(i)
    }
    
    if setList.count == numList.count {
        print("Yes")
    } else {
        print("No")
    }
}

//PermutationCheck()
