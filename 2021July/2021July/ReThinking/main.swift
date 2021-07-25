//
//  zerosumrange3.swift
//  2021July
//
//  Created by Yosuke Nakayama on 2021/07/23.
//
// https://atcoder.jp/contests/agc023/tasks/agc023_a

import Foundation

func zerosumrange3() {
    let N = Int(readLine()!)!
    let aList = readLine()!.split(separator: " ").map { Int($0)! }
    
    var sumList:[Int] = []
    var calc = 0
    var result = 0

    aList.forEach { num in
        sumList.append(calc)
        calc += num
    }

    var dictionary = [Int: Int]()
    sumList.forEach { dictionary[$0, default: 0] += 1 }
    
    print(dictionary)
    
    // 2の場合は１カウント
    // 3以上の場合は組み合わせ
    
    for  value in dictionary.values {
        if value < 2 {
            continue
        } else if value == 2 {
            result += 1
        } else {
            result += (value * (value-1))/2
        }
    }
    
    print("result", result)
}

zerosumrange3()
