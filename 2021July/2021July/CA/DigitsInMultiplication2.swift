//
//  DigitsInMultiplication2.swift
//  2021July
//
//  Created by Yosuke Nakayama on 2021/07/13.
// https://atcoder.jp/contests/abc057/tasks/abc057_c

import Foundation


func DigitsInMultiplication2() {
    
    let n = Int(readLine()!)!
    
    var g = 10
    for i in 1...Int(sqrt(Double(n))) + 1 {
        if n % i == 0 {
            let f = max(String(i).count,String(n/i).count)
            g = min(g,f)
        }
    }
    print(g)

}

//DigitsInMultiplication2()
