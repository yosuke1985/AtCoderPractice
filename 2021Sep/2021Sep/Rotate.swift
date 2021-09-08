//
//  Rotate.swift
//  Rotate
//
//  Created by Yosuke Nakayama on 2021/09/07.
//

import Foundation

func Rotate() {
    
    let N = String(readLine()!)
    
//    print(Array(N))
    
    var a = Array(N)
    
    let b = a.removeFirst()
    
    var result = ""
//    print(a)
//    print(b)
    
//    a.append(contentsOf: b)
    a.insert(contentsOf: [b], at: a.count)
    
//    print(a)
    a.forEach { word in
        result += "\(word)"
    }
    
    print(result)
}

//Rotate()
