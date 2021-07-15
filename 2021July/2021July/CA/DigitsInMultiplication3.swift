//
//  DigitsInMultiplication3.swift
//  2021July
//
//  Created by Yosuke Nakayama on 2021/07/14.
//

import Foundation

func DigitsInMultiplication3() {
    let n = Double(readLine()!)!
    let sn = sqrt(n)
    var minNum: Int = Int(sn) + 1
    for i in 1...(Int(sn)+1) {
        if Int(n) % i == 0  {
            
            let calculate = max(String(Int(i)).count, String(Int(n/Double(i))).count)
            
            minNum = min(minNum, calculate)
        }
    }
    
    print(minNum)
}

//DigitsInMultiplication3()
