//
//  IPFL.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/25.
// https://atcoder.jp/contests/abc199

import Foundation

func IPFL() {
    let N = Int(readLine()!)!
    let S = String(readLine()!)
    let Q = Int(readLine()!)!
    var tabList:[[Int]] = []

    (1...Q).forEach { _ in
        
        let readList = readLine()!.split(separator: " ").map { Int($0)! }
        tabList.append(readList)
    }
    
//    print(N, S, Q,tabList)
    
    var sArray = Array(S)
    
    for tab in tabList {
        
        if tab[0] == 1 {
            let A = tab[1]
            let B = tab[2]
            let inputA = sArray[B-1]
            let inputB = sArray[A-1]
            sArray.remove(at: A-1)
            sArray.insert(inputA, at: A-1)
            sArray.remove(at: B-1)
            sArray.insert(inputB, at: B-1)
        } else {
            let firstHalf = sArray[0..<N]
            let latterHalf = sArray[N..<2*N]
            
            sArray.removeSubrange(0..<N)
            sArray.insert(contentsOf: latterHalf, at: 0)

            sArray.removeSubrange(N..<2*N)
            sArray.insert(contentsOf: firstHalf, at: N)
            
        }
    }

    print(sArray.reduce(into: "", { result, char in
        result += "\(char)"
    }))
    
}


//IPFL()

