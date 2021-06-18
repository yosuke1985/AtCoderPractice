//
//  pow.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/18.
// https://atcoder.jp/contests/abc205/tasks

import Foundation

func pow() {
    let readlineList = readLine()!.split(separator: " ").map { Double($0)! }
    let A = fabs(readlineList[0])
    let B = fabs(readlineList[1])
    let C = readlineList[2]
    
    if A < B {
        print("<")
        
    } else if A == B {
        print("=")
    } else {
        print(">")
    }
    
}


//pow()
