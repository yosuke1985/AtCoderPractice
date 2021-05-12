//
//  chooseIntegers.swift
//  2021May
//
//  Created by Yosuke Nakayama on 2021/04/29.
//
// https://atcoder.jp/contests/abc060/tasks/abc060_b

import Foundation


func chooseIntegers() {
    let items = readLine()!.split(separator: " ").map { Int($0)! }
    
    let A = items[0]
    let B = items[1]
    let C = items[2]
    var isNo = true
    
    let times = 100
    for time in 1...times {
        var sum = 0
        
        for t in 1...time {
            sum += t * A
        }

        if sum % B == C {
            print("YES")
            isNo = false
            return
        } else {
            continue
        }
    }

    if isNo {
        print("NO")
    }
}

//chooseIntegers()
