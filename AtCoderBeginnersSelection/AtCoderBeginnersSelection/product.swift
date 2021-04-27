//
//  product.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/03/28.
//
// https://atcoder.jp/contests/abs/tasks/abc086_a

import Foundation


func product() {
    let ints = readLine()!.split(separator: " ").map { Int($0)! }
    var product = (a: ints[0], b: ints[1])
    
    let sum = product.a * product.b
    
    if sum.isMultiple(of: 2) {
        print("Even")
    } else {
        print("Odd")
    }
    
}

//product()
