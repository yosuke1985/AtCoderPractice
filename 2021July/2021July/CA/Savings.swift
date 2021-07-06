//
//  Savings.swift
//  2021July
//
//  Created by Yosuke Nakayama on 2021/07/05.
//

import Foundation

func Savings() {
    let N = Int(readLine()!)!
    var sum = 0
    var day = 1
    
    while true {
        sum += day
        day += 1
        if N <= sum {
            print(day-1)
            return
        }
    }

    
}

//Savings()
