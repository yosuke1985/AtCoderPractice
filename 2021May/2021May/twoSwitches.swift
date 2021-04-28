//
//  twoSwitches.swift
//  2021May
//
//  Created by Yosuke Nakayama on 2021/04/27.
// https://atcoder.jp/contests/abc070/tasks/abc070_b

import Foundation


func twoSwitches() {
    let items = readLine()!.split(separator: " ").map { Int($0)! }
//    print(A,B,C,D)

    let A = items[0]
    let B = items[1]
    let C = items[2]
    let D = items[3]
    var min = 0
    var max = 0
    
    if C >= A {
        if A...B ~= C {

            min = C
            if B >= D {

                max = D
            } else {
                max = B
            }

            print(max-min)
        } else {
            print(0)
        }
    } else {
        if C...D ~= A {
            min = A
            if B >= D {
                max = D
            } else {
                max = B
            }
            print(max-min)
        } else {
            print(0)

        }
    }
}

//twoSwitches()

func twoSwitches2() {
    let items = readLine()!.split(separator: " ").map { Int($0)! }
//    print(A,B,C,D)

    let A = items[0]
    let B = items[1]
    let C = items[2]
    let D = items[3]
    

    let low = max(A, C)
    let high = min(B, D)
    
    print(max(0, high - low))
}

//twoSwitches2()

