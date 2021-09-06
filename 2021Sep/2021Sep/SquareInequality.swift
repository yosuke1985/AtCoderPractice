//
//  SquareInequality.swift
//  SquareInequality
//
//  Created by Yosuke Nakayama on 2021/09/06.
//

import Foundation

func SquareInequality() {
    
    let abc = readLine()!.split(separator: " ").map { Double($0)! }

    let A = abc[0]
    let B = abc[1]
    let C = abc[2]
    
    if pow(A, 2) + pow(B, 2) < pow(C, 2){
        print("Yes")
    } else {
        print("No")
    }
    
}

SquareInequality()
