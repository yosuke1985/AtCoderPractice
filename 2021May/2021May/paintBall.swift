//
//  paintBall.swift
//  2021May
//
//  Created by Yosuke Nakayama on 2021/04/29.
// B - AtCoDeerくんとボール色塗り
// https://atcoder.jp/contests/abc046/tasks/abc046_b

import Foundation


func paintBall() {
    let items = readLine()!.split(separator: " ").map { Int($0)! }
    let N = items[0] // counts
    let K = items[1] // colors
    
    /*
    1個 5色
     
     0
     1
     2
     3
     4

     2個 2色
     0 1
     1 0
     
     3個 2色
     0 1 0
     1 0 1
     
     3個 3色
     0 1 0
     0 1 2
     0 2 0
     0 2 1
     1 0 1
     1 0 2
     1 2 0
     1 2 1
     2 0 1
     2 0 2
     2 1 0
     2 1 2
     
     3 * 2 * 2
     3 * 2 ^ 2
     K * (K - 1) ^ N

     K * (K - 1) * (K -1)
     
     K*(K-1)^(N-1)
     
     */
    
    
//    print(K*(K-1)<<(N-1))
    print(Decimal(K) * pow(Decimal(K-1),N-1))
}

//paintBall()
