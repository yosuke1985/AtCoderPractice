//
//  Canyoubuythemall.swift
//  Aug2021
//
//  Created by Yosuke Nakayama on 2021/08/11.
//
// https://atcoder.jp/contests/abc209/tasks/abc209_b

import Foundation

func Canyoubuythemall() {
    let nx = readLine()!.split(separator: " ").map { Int($0)! }
    let N = nx[0]
    let X = nx[1]
    let aList = readLine()!.split(separator: " ").map { Int($0)! }
    
    var sum = 0
    
    for (index, element) in aList.enumerated() {
        if (index + 1) % 2 == 0 {
            sum += element - 1
        } else {
            sum += element
        }
    }
    
    print(sum <= X ? "Yes" : "No")
}


Canyoubuythemall()
