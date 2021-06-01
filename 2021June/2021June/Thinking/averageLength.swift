//
//  averageLength .swift
//  2021May
//
//  Created by yosuke.nakayama on 2021/05/29.
//
// https://atcoder.jp/contests/abc145/tasks/abc145_c

import Foundation


func averageLength() {
    let N = Int(readLine()!)!
    let items = (0..<N).map { _ in readLine()!.split(separator: " ").map { Int($0)! } }
    
    print("N", N)
    print("items", items)

}

//averageLength()
