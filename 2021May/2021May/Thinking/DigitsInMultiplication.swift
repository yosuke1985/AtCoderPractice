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
    
    func findDivisorList() {
        divisorListRoop: for i in 1...(N/2) where N % i == 0 {
            guard divisorList.count <= 50 else { break divisorListRoop }
            divisorList.insert(i)
        }
    }
    findDivisorList()

    for i in divisorList.sorted() {
        let division = N / i

//        print("i", i)
//        print("division", division)
        let iLog10 = Int(log10(Double(i))) + 1
        let divLog10 = Int(log10(Double(division))) + 1
//        print("iLog10", iLog10)
//        print("divLog10", divLog10)
        let fAB = iLog10 >= divLog10 ? iLog10 : divLog10
        fABList.append(fAB)
    }
    
//    print("fABList", fABList)

    print(fABList.min()!)

}

DigitsInMultiplication()
