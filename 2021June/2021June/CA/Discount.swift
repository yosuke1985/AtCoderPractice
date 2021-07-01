//
//  Discount.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/07/02.
//
// https://atcoder.jp/contests/abc193/tasks/abc193_a

import Foundation

func Discount() {
    
    let readLineList = readLine()!.split(separator: " ").map { Double($0)! }
    let A = readLineList[0]
    let B = readLineList[1]
    

    print(((A - B) / A)*100)
    
}

//Discount()
