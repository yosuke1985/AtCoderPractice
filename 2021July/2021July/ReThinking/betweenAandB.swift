//
//  betweenAandB.swift
//  2021May
//
//  Created by Yosuke Nakayama on 2021/04/30.
// https://atcoder.jp/contests/abc048/tasks/abc048_b

import Foundation

func betweenAandB() {
    let items = readLine()!.split(separator: " ").map { Int($0)! }
    
    let a = items[0]
    let b = items[1]
    let x = items[2]
    
//    var count = 0
    
//    for i in a...b {
//        if i % x == 0 {
//            count += 1
//        }
//    }

    if a != 0 {
      print(b / x - (a - 1) / x)
    } else {
      print(b / x + 1)
    }

    
}

//betweenAandB()
