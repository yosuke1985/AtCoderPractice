//
//  dontbelate.swift
//  dontbelate
//
//  Created by Yosuke Nakayama on 2021/08/29.
//

import Foundation

func dontbelate() {
    let dts = readLine()!.split(separator: " ").map { Float($0)! }
    let D = dts[0]
    let T = dts[1]
    let S = dts[2]


    let min = D / S
    if T >= min {
        print("Yes")
    } else {
        print("No")

    }

    
}

//dontbelate()
