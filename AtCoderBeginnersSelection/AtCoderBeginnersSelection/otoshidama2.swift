//
//  otoshidama2.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/04/06.
//
// https://atcoder.jp/contests/abs/tasks/abc085_c


// n = i + j + k
// k = n - i - j

import Foundation

func otoshidama2() {
    let ints = readLine()!.split(separator: " ").map { Int($0)! }
    let n = ints[0] // n枚
    let y = ints[1] // sum
    
    
    for i in 0...n {
        for j in 0...n {
            let k = n - i - j
            if k >= 0, y == i * 10000 + j * 5000 + k * 1000 {
                
                print(i, j, k)
                
                return
            }
        }
    }
    
    print(-1, -1, -1)
    
}

//otoshidama2()
