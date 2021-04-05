//
//  otoshidama.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/04/01.
//
// https://atcoder.jp/contests/abs/tasks/abc085_c


// n = i + j + k
// k = n - i - j

import Foundation

func otoshidama() {
    let ints = readLine()!.split(separator: " ").map { Int($0)! }
    
    let n = ints[0] // n枚
    let y = ints[1] // sum
    var count10000 = -1
    var count5000 = -1
    var count1000 = -1
    
    // 10000yen, 5000yen, 1000yen
    let yMax10000 = Int(ceil( Double(y / 10000)))
    let yMax5000 = Int(ceil( Double(y / 5000)))
    let yMax1000 = Int(ceil( Double(y / 1000)))
    
    for i in 0...yMax10000 {
        if 10000 * i == y && n == i {
            count10000 = i
            count5000 = 0
            count1000 = 0
            
            break
        } else {
            for j in 0...yMax5000 {
                let k = n - i - j
                if 10000 * i + 50000 * j  == y && n == i + j {
                    count10000 = i
                    count5000 = j
                    count1000 = 0
                    break
                } else if k >= 0 && (10000 * i + 50000 * j + 1000 * k ) == y {
                    count10000 = i
                    count5000 = j
                    count1000 = n - i - j
                    break
                }
            }
        }
    }
    
    print(count10000, count5000, count1000)

    
}

//otoshidama()
