//
//  a.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/18.
// https://atcoder.jp/contests/abc205/tasks

import Foundation

func a() {
    let readlineList = readLine()!.split(separator: " ").map { Int($0)! }
    let A = Float(readlineList[0])
    let B = Float(readlineList[1])
    
    
    print(((A * B)/100) )

}

//a()
