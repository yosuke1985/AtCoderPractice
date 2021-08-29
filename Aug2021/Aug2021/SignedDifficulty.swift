//
//  SignedDifficulty.swift
//  SignedDifficulty
//
//  Created by Yosuke Nakayama on 2021/08/30.
//

import Foundation

func SignedDifficulty() {
    let xyList = readLine()!.split(separator: ".").map { Int($0)! }
    let X = xyList[0]
    let Y = xyList[1]
    
    if 0 <= Y, Y <= 2 {
        print("\(X)-")
        return
    }
    
    if 3 <= Y, Y <= 6 {
        print(X)
        return
    }
    
    if 7 <= Y, Y <= 9 {
        print("\(X)+")
        return
    }

}

SignedDifficulty()
