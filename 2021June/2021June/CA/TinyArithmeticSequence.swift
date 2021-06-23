//
//  TinyArithmeticSequence.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/23.
//
// https://atcoder.jp/contests/abc201/tasks/abc201_a

import Foundation

func TinyArithmeticSequence() {
    var readlist = readLine()!.split(separator: " ").map { Int($0)! }.sorted { $0 > $1 }

//    readlist[0] // 1
//    readlist[1] // 2
//    readlist[2] // 3
    
    let a32 = readlist[2] - readlist[1]
    let a21 = readlist[1] - readlist[0]
    if a32 == a21 {
        print("Yes")
    } else {
        print("No")
    }
    
    

}

//TinyArithmeticSequence()
