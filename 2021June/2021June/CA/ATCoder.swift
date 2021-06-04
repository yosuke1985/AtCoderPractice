//
//  ATCoder.swift
//  2021May
//
//  Created by Yosuke Nakayama on 2021/05/31.
//
// https://atcoder.jp/contests/abc122/tasks/abc122_b

import Foundation


func ATCoder() {
    let S = readLine()!
    let Slist = Array(S)
    let ACGT = ["A", "C", "G", "T"]
    var maxCount = 0
    var storedMaxList: [Int] = []
    
    for char in Slist {
    
        var isACGT = false
        ACGT.forEach { acgt in
            if "\(char)" == "\(acgt)" {
                isACGT = true
            }
        }
        
        if isACGT {
            maxCount += 1
            storedMaxList.append(maxCount)
        } else {
            storedMaxList.append(maxCount)
            maxCount = 0
        }
        
    }
    
    let answer = storedMaxList.max()!
    
    print(answer)
 

}

//ATCoder()


