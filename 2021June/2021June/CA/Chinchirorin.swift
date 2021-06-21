//
//  Chinchirorin.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/20.
//
// https://atcoder.jp/contests/abc203/tasks/abc203_a

import Foundation

func Chinchirorin() {
    
    let readList = readLine()!.split(separator: " ").map { Int($0)! }
    let a = readList[0]
    let b = readList[1]
    let c = readList[2]

    var setList = Set<Int>()
    readList.forEach { num in
        setList.insert(num)
    }

    if setList.count == 1 {
        print(setList.first!)
        return
    } else if setList.count == 3 {
        print(0)
        return
    } else {
        if a == b {
            print(c)
            return
        } else if b == c {
            print(a)
            return
        } else {
            print(b)
        }
    }
    
}

//Chinchirorin()
