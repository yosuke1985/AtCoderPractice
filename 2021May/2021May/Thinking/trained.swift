//
//  trained.swift
//  2021May
//
//  Created by Yosuke Nakayama on 2021/05/02.
//

import Foundation

func trained() {
    let N = Int(readLine()!)!
    let numbers: [Int] = (0..<N).map { _ in Int(readLine()!)! }
    
    print("N", N)
    print("numbers", numbers)
}

//trained()
