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
    var fABList: [Int] = []
    
    for i in 1...N where N % i == 0 {
        divisorList.insert(i)
    }
    

    for i in divisorList.sorted() {
        let division = N / i

//        print("i", i)
//        print("division", division)
        let iLog10 = Int(log10(Double(i)))
        let divLog10 = Int(log10(Double(division)))
//        print("iLog10", iLog10)
//        print("divLog10", divLog10)
        let fAB = iLog10 + divLog10
        fABList.append(fAB)
    }
    
//    print("fABList", fABList)

    print(fABList.min()!)

}

DigitsInMultiplication()
