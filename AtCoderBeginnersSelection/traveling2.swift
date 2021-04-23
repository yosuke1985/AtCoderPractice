//
//  traveling2.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/04/23.
//

import Foundation

typealias Plan = (t: Int, x: Int, y: Int)


func readThreeInts() -> (a: Int, b: Int, c: Int) {
    let ints = readLine()!.split(separator: " ").map { Int($0)! }
    return (a: ints[0], b: ints[1], c: ints[2])
}

func traveling2() {
    let N = Int(readLine()!)!
    let plans: [Plan] = (0..<N).map { _ in readThreeInts() }
    
    var previous = Plan(t: 0, x: 0, y: 0)
    
//    print(N)
//    print(plans)
    
    for (index, plan) in plans.enumerated() {

        let t = plan.t - previous.t
        let x = plan.x - previous.x
        let y = plan.y - previous.y
        
        previous = plan
        
        var distance = 0 - x - y
        
        if distance <= 0 {
            distance = distance * -1
        }
        let diff = t - distance
        
//        if diff <= 0 {
//            diff = diff * -1
//        }
        if diff >= 0,  diff % 2 == 0 {
            if index + 1 == N {
                print("Yes")
                return
            } else {
                continue
            }
        } else {
            print("No")
            return
        }
    }
    
}

traveling2()
