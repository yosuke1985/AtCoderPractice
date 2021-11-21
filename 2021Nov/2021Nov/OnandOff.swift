//
//  OnandOff.swift
//  2021Nov
//
//  Created by yosuke.nakayama on 2021/11/21.
//

import Foundation

func OnandOff() {
    let stx = readLine()!.split(separator: " ").map { Int($0)! }

    stx[0]
    stx[1]
    stx[2]
    
    if stx[0] <= stx[2], stx[2] < stx[1] + 1 {
        print("Yes")
    } else {
        print("No")

    }

}

//OnandOff()
