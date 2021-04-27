//
//  someSums.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/03/29.
//
//

/*
 https://atcoder.jp/contests/abs/tasks/abc083_b
 問題文
 1以上N以下の整数のうち、
 10進法での各桁の和がA以上B以下であるものの総和を求めてください。

 */


import Foundation

func someSums() {
    let readLineList = readLine()!.split(separator: " ").map { Int($0)! }
    var n = readLineList[0]
    var a = readLineList[1]
    var b = readLineList[2]
    var sumSome = 0
    for i in 1...n {
//        print("i", i)
        var stringedListMapInt = Array(String(i)).map { String($0) }.map { Int($0) }
        var sumDigit = stringedListMapInt.reduce(into: 0) { (result, _num) in
            guard let num = _num else { return }
            result += num
        }

        if sumDigit >= a && sumDigit <= b {
//            print("各桁の和", sumDigit)
            sumSome += i
        }
    }
    
    
    print(sumSome)
}

//someSums()

func someSums2() {
    let N = Int(readLine()!)!
    let numbers = readLine()!.split(separator: " ").map { Int($0)! }

    var alice = 0
    var bob = 0

    numbers
        .sorted(by: >)
        .enumerated()
        .forEach { (index, element) in
            if index.isMultiple(of: 2) {
                alice += element
            } else {
                bob += element
            }
        }

    print(alice - bob)
}
//main6()
