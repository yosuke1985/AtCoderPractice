//
//  180.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/22.
//
// https://atcoder.jp/contests/abc202/tasks

import Foundation

func num180() {
    let S = readLine()!
    
    let output = Array(S).map { num -> String in
        if num == "6" {
            return "9"
        } else if num == "9" {
            return "6"
            
        } else {
            return "\(num)"
        }
    }
    .joined()
    .reversed()

    let output2 = Array(arrayLiteral: output)
        .reduce("", +)
    
    print(output2)

}

num180()
