//
//  coins2.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/04/16.
//

import Foundation


func coins2() {
    let a = Int(readLine()!)!
    let b = Int(readLine()!)!
    let c = Int(readLine()!)!
    let x = Int(readLine()!)!
    
    var count = 0
    for i in 0...a {
        for j in 0...b {
            for n in 0...c {
                if i * 500 + j * 100 + n * 50 == x {
                    count += 1
                    continue
                }
            }
        }
    }
    
    print(count)
    
    
    
}

//coins2()
