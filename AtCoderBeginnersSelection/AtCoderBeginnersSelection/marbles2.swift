//
//  marbles2.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/04/14.
//

import Foundation

func marbles2() {
    let line = readLine()!
    let a = Array(line)
//    print(a.map({ (numString) in
//        print(type(of: numString))
//    }))
    
    let b: [String] = a.map { String($0) }
    let c: [Int] = b.map { Int($0)! }

    
    let sum  = c.reduce(into: 0) { (result, num) in
        result += num
    }
    
    print(sum)

}

//marbles2()
