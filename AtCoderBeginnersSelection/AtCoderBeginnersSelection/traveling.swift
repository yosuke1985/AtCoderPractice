//
//  traveling.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/04/13.
//
// https://atcoder.jp/contests/abs/tasks/arc089_a

import Foundation


/*
 2
 3 1 2
 6 1 1
 
 t
 まずxの方向まで進み
 yの方向に進み
 差分が生じれば、その差分が２で割り切れる。
 
 x + y
 */

typealias Plan = (t: Int, x: Int, y: Int)

func readThreeInts() -> (a: Int, b: Int, c: Int) {
    let ints = readLine()!.split(separator: " ").map { Int($0)! }
    return (a: ints[0], b: ints[1], c: ints[2])
}

func traveling() {
    let N = Int(readLine()!)!
    let plans: [Plan] = (0..<N).map { _ in readThreeInts() }

    var previous = Plan(t: 0, x: 0, y: 0)
    
//    print("N", N)
//    print(plans)
    
    var result: [Bool] = []

    for (index, i) in plans.enumerated() {
        
        if index == 0 {
            let t = i.t
            let x = i.x
            let y = i.y
            
            var total = x + y
            if total < 0 {
                total = -total
            }
            
            if t >= total && (t - total) % 2 == 0 {
                result.append(true)
            } else {
                result.append(false)
            }

        } else {
            previous = plans[index-1]
            
            let t = i.t - previous.t
            let x = i.x - previous.x
            let y = i.y - previous.y
            
            var total = x + y
            if total < 0 {
                total = -total
            }
            
            if t >= total && (t - total) % 2 == 0 {
                result.append(true)
            } else {
                result.append(false)
            }

            
        }
    }
    
    if result.allSatisfy({ $0 == true }) {
        print("Yes")
    } else {
        print("No")
    }
}

/*
 2
 6 3 3
 8 1 1
 */


//traveling()
