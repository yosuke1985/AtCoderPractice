//
//  DigitsInMultiplication.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/04.
//
// https://atcoder.jp/contests/abc057/tasks/abc057_c

import Foundation


func DigitsInMultiplication() {
    
    let N = Int(readLine()!)!
    var divisorList = Set<Int>()
    var minLog10List = Set<Int>()
    
    for i in 1...N where N % i == 0 {
        divisorList.insert(i)
    }
    

    for i in divisorList.sorted() {
        let division = N / i

        let iLog10 = Int(ceil(log10(Double(i))))
        let divLog10 = Int(ceil(log10(Double(division))))
        
        let minLog10 = iLog10 > divLog10 ? iLog10: divLog10
        minLog10List.insert(minLog10)

    }
    print(minLog10List.min()! + 1)

}

//DigitsInMultiplication()
