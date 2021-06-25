//
//  SquareInequality.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/25.
// https://atcoder.jp/contests/abc199

import Foundation

func SquareInequality() {
    let readlist = readLine()!.split(separator: " ").map { Double($0)! }
    let A = readlist[0]
    let B = readlist[1]
    let C = readlist[2]
    
    if pow(A, 2.0) + pow(B, 2.0) < pow(C, 2.0) {
        print("Yes")
    } else {
        print("No")
    }

}

//SquareInequality()
