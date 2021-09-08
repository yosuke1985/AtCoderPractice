//
//  Orthogonality.swift
//  Orthogonality
//
//  Created by Yosuke Nakayama on 2021/09/08.
//

import Foundation

func Orthogonality() {
    _ = String(readLine()!)

    let aList = readLine()!.split(separator: " ").map { Int($0)! }
    let bList = readLine()!.split(separator: " ").map { Int($0)! }


    let naiseki = zip(aList, bList).reduce(into: 0) { result, tuple in
        result += tuple.0 * tuple.1
    }
    
    print(naiseki == 0 ? "Yes" : "No")
    
}

//Orthogonality()
