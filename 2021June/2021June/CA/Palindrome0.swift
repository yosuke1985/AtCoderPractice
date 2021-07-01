//
//  Palindrome0.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/28.
//
// https://atcoder.jp/contests/abc197/tasks/abc197_a

import Foundation


func Palindrome0() {
    let N = Int(readLine()!)!
    
    var checkList = Array(String(N))
    
//    print("checkList", checkList)
//    print(type(of: String(checkList)))
//    print("String(checkList)", String(checkList))
    
    guard checkList.count > 1 else {
        print("Yes")
        return
    }
    
    
    while checkList.last! == "0" {
        checkList.popLast()
    }

    for i in 0..<(checkList.count / 2) {
        if checkList[i] != checkList[checkList.count - i - 1] {
            print("No")
            return
        }
    }
    print("Yes")

    
}

//Palindrome0()
