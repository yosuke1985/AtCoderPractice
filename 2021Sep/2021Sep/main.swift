//
//  ManyBalls.swift
//  ManyBalls
//
//  Created by Yosuke Nakayama on 2021/09/03.
//
// https://atcoder.jp/contests/abc216/tasks/abc216_c

import Foundation

func ManyBalls() {
    let N = Int(readLine()!)!
    var count = 0
    
    var result = 0
    
    while count < 120 {
        if result <= N {
            print("finished")
            return
        } else if N - result <= 2 {
            result *= 2
        } else {
            result += 1
        }
        
        
        count += 1
    }
    
}

ManyBalls()
