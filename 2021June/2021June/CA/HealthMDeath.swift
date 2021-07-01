//
//  HealthMDeath.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/07/01.
//
// https://atcoder.jp/contests/abc195/tasks/abc195_a

import Foundation

func HealthMDeath() {
    let HealthMDeath = readLine()!.split(separator: " ").map { Int($0)! }
    
    let answer = HealthMDeath[1].isMultiple(of: HealthMDeath[0]) ? "Yes" : "No"
    
    print(answer)

}

//HealthMDeath()
