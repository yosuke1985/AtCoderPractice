//
//  DigitsinMultiplication5.swift
//  2021July
//
//  Created by Yosuke Nakayama on 2021/07/15.
//

import Foundation


func DigitsinMultiplication5() {
    let N = Int(readLine()!)!
    
    let loopEnd = Int(sqrt(Double(N))) + 1
    var result = 10000
    
    for i in 1...loopEnd {
        if N % i == 0 {
//            N / i = X
            // N/iがA
            // iがB
            let calculated = max(String(N/i).count, String(i).count)
            
            result = min(result,calculated)
        }
    }
    
    print(result)
}

DigitsinMultiplication5()
