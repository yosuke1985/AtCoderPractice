//
//  howMany.swift
//  Aug2021
//
//  Created by Yosuke Nakayama on 2021/08/17.
//
// https://atcoder.jp/contests/abc214/tasks/abc214_b

import Foundation

func howMany() {
    let st = readLine()!.split(separator: " ").map { Int($0)! }
    let S = st[0]
    let T = st[1]
    var count = 0
    
    // a + b + c <= S, a * b * c <= T
    //
    
    for a in 0...S {
        
        for b in 0...(S - a) {
            
            for c in 0 ... (S - a - b) {
                
                if a + b + c <= S, a * b * c <= T {
                    count += 1
               }
            }
        }
        
    }
    
    print(count)
}

//howMany()
