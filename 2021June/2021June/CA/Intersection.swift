//
//  Intersection.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/25.
// https://atcoder.jp/contests/abc199

import Foundation

func Intersection() {
    var abList:[[Int]] = []
    let N = Int(readLine()!)!
    (0...1).forEach{ _ in
        let readList = readLine()!.split(separator: " ").map { Int($0)! }
        abList.append(readList)
    }
    let A = abList[0]
    let B = abList[1]

    var result: Set<Int> = Set<Int>()
    
    (A[0]...B[0]).forEach { num in
        result.insert(num)
    }
    
//    print(N)
//    print(A)
//    print(B)
    
    for i in 1..<N {
        let a = A[i]
        let b = B[i]
        var abSet:Set<Int> = Set<Int>()
        for j in a...b {
            abSet.insert(j)
        }
        
        result = result.intersection(abSet)
                
    }

    print(result.count)
}

//Intersection()
