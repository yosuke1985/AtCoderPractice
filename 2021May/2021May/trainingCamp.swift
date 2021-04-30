//
//  trainingCamp.swift
//  2021May
//
//  Created by Yosuke Nakayama on 2021/04/28.
// https://atcoder.jp/contests/abc055/tasks/abc055_b

import Foundation

func trainingCamp() {
    let N = Int(readLine()!)!

//    print(N % 1000000007)
    
    /*
     1 1
     2 2
     3 6
     */
    
    var totalCount = 1
    
    for i in 1...N {
        totalCount *= i
        totalCount = totalCount % 1000000007
    }
    
    print(totalCount)

}

//trainingCamp()

