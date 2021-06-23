//
//  200thABC-200.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/24.
//
// https://atcoder.jp/contests/abc200/tasks/abc200_b

import Foundation


func thABC() {
    let readlist = readLine()!.split(separator: " ").map { Int($0)! }
    let N = readlist[0]
    let K = readlist[1]
    var ans = N
    
    (1...K).forEach { num in
//        print("num", num)
        if ans % 200 == 0 {
            ans = ans / 200
        } else {
            ans = Int("\(ans)200") ?? 0
        }
    }
    
    print(ans)
    
}

//thABC()
