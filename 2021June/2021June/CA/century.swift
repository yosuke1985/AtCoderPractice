//
//  century.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/24.
//
// https://atcoder.jp/contests/abc200/tasks/abc200_a

import Foundation

func century() {
    let N = Double(readLine()!)!
    
        /*
     1...100
     101...200
     
     */
//
//    for i in 0...30 {
//        if (i*100 - 99)...(i*100) ~= N {
//            print(i)
//            return
//        }
//    }
//    let n = Int(readLine()!)!
//    print(Double((N - 1) / 100 + 1))

    print(Double((N+99.0)/100.0))
    
}

//century()
