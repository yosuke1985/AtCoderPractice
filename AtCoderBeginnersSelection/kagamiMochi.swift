//
//  kagamiMochi.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/03/31.
//
//https://atcoder.jp/contests/abs/tasks/abc085_b
// ABC085B - Kagami Mochi

import Foundation

func kagamiMochi() {
    let N = Int(readLine()!)!
    let numbers = (0..<N).map { _ in Int(readLine()!)! }
    
    var numbersSet = Set<Int>()
    numbers.forEach { (num) in
        numbersSet.insert(num)
    }
    let sum = numbersSet.count
//    print(sum)
    print(Set(numbers).count)
}

//kagamiMochi()
