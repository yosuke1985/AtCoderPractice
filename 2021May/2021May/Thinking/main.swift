//
//  AtCoder Condominium.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/21.
//

import Foundation

func AtCoderCondominium() {
    let readlist = readLine()!.split(separator: " ").map { Int($0)! }
    let N = readlist[0]
    let K = readlist[1]
    var sum = 0
    for n in 1...N {
        for k in 1...K {
            sum += Int("\(n)0\(k)") ?? 0

            
        }
        
    }
    print(sum)
}

AtCoderCondominium()
