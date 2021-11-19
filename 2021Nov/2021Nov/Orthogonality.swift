//
//  Orthogonality.swift
//  2021Nov
//
//  Created by Yosuke on 2021/11/19.
//

import Foundation

func Orthogonality() {
    let N = Int(readLine()!)!
    let row1 = readLine()!.split(separator: " ").map { Int($0)! }
    let row2 = readLine()!.split(separator: " ").map { Int($0)! }
    var innerProduct = 0
    
    zip(row1, row2).forEach { row1, row2 in
        innerProduct += row1 * row2
    }
    
//    print(row1)
//    print(row2)
    print(innerProduct == 0 ? "Yes" : "No")

    
}

//Orthogonality()

