//
//  trainTicket.swift
//  2021May
//
//  Created by Yosuke Nakayama on 2021/05/06.
// https://atcoder.jp/contests/abc079/tasks/abc079_c

import Foundation


func trainTicket() {
    let numsString = readLine()!
    let numsChar = Array(numsString)
    
    let nums = numsChar.map { char in
        return Int(String(char))!
    }
    
    let opNestedList = [
    [true, true, true],
    [true, true, false],
    [true, false, true],
    [true, false, false],
    [false, true, true],
    [false, true, false],
    [false, false, true],
    [false, false, false]
    ]
    
    func calculate(opList: [Bool]) -> Int {
        var total = nums[0]
        
        for index in 0..<nums.count {
            if index >= 1 {
                if opList[index-1] {
                    total += nums[index]
                } else {
                    total -= nums[index]
                }
            }
        }
        
        return total
    }
    
//    print(calculate(opList: [true,true,true]))
    
    for opList in opNestedList {
//        print(calculate(opList: opList))
        if calculate(opList: opList) == 7 {
            print("\(nums[0])\(opList[0] ? "+":"-")\(nums[1])\(opList[1] ? "+":"-")\(nums[2])\(opList[2] ? "+":"-")\(nums[3])=7")
            return
        }
    }
    
}


//trainTicket()
