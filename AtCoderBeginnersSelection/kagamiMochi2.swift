//
//  kagamiMochi2.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/04/18.
//

import Foundation


func kagamiMochi2() {
    let N = Int(readLine()!)!
    let numbers = (0..<N).map { _ in Int(readLine()!)! }
    
    print(Set(numbers).count)
    
    
}

kagamiMochi2()
