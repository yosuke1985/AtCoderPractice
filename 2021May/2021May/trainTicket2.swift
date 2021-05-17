//
//  trainTicket2.swift
//  2021May
//
//  Created by Yosuke Nakayama on 2021/05/15.
//

import Foundation

func trainTicket2() {
    let numsString = readLine()!
    let numsChar = Array(numsString)

    let nums = numsChar.map { char in
        return Int(String(char))!
    }
    let numsCount = nums.count - 1
    
    // bit全探索
    // 全パターンを列挙させる。
    // 配列で 1 か 0かで格納しておく。
    

//    let shiftBits: Int = 5
//    print(shiftBits)
//    print(String(shiftBits, radix: 2))
//
//    print("right shift 1",shiftBits >> 1)
//    print((shiftBits>>2) & 1 > 0)
    
    
//    let result = shiftBits>>1
//    print(result)
//    print(String(result, radix: 2))
//


    for i in 0..<(1<<numsCount) { // 0...7
        var opList: [Bool] = []
        for j in 0..<numsCount { // 0..<3
            if i & (1<<j) > 0 {
                opList.append(true)
            } else {
                opList.append(false)
            }
        }
        
        var result = nums[0]

        for (index, k) in opList.enumerated() {
            
            if k {
                result += nums[index+1]
            } else {
                result -= nums[index+1]
            }
        }
        
        if result == 7 {
            print("\(nums[0])\(opList[0] ? "+":"-")\(nums[1])\(opList[1] ? "+":"-")\(nums[2])\(opList[2] ? "+":"-")\(nums[3])=7")
            return
        }
    }
    
}

trainTicket2()
