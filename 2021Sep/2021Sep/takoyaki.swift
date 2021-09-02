//
//  takoyaki.swift
//  2021Sep
//
//  Created by Yosuke Nakayama on 2021/09/02.
//

import Foundation

func takoyaki() {
    let nxt = readLine()!.split(separator: " ").map { Double($0)! }

    let N = nxt[0]
    let X = nxt[1]
    let T = nxt[2]
    
    let calculated = Int(ceil(N / X) * T)
    
    print(calculated)
    
}

//takoyaki()
