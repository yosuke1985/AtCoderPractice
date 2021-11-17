//
//  SquareInequality.swift
//  2021Nov
//
//  Created by Yosuke on 2021/11/16.
//

import Foundation

func SquareInequality() {
    let row = readLine()!.split(separator: " ").map { Double($0)! }
    let A = row[0]
    let B = row[1]
    let C = row[2]
    
    print(pow(A, 2) + pow(B, 2) < pow(C, 2) ? "Yes" : "No")
}

//SquareInequality()
