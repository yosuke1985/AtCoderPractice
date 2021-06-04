//
//  KthCommonDivisor.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/04.
//
// https://atcoder.jp/contests/abc120/tasks/abc120_b

import Foundation

func KthCommonDivisor() {
    let readList = readLine()!.split(separator: " ").map { Int($0)! }
    
    let A = readList[0]
    let B = readList[1]
    let K = readList[2]
    
    var Alist: Set = Set<Int>()
    var Blist: Set = Set<Int>()

    
    for i in 1...A {
        if Int(A) % i == 0 {
            Alist.insert(i)
        }
    }
    
    for i in 1...B {
        if Int(B) % i == 0 {
            Blist.insert(i)
        }
    }
    let resultList = Alist.intersection(Blist).sorted(by: { numA, numB in
        numA > numB
    })
    print(resultList[K-1])

}


//KthCommonDivisor()
