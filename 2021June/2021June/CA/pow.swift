//
//  pow.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/18.
// https://atcoder.jp/contests/abc205/tasks

import Foundation

func pow() {
    let readlineList = readLine()!.split(separator: " ").map { Int($0)! }
    var A = readlineList[0]
    var B = readlineList[1]
    let C = readlineList[2]
    
    if C % 2 == 0 {
        A = abs(A)
        B = abs(B)
    }
    
    if A < B {
        print("<")

    } else if A == B {
        print("=")
    } else {
        print(">")
    }
}

//pow()
