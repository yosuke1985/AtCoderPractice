//
//  RemoveIt.swift
//  2021July
//
//  Created by Yosuke Nakayama on 2021/07/03.
//
// https://atcoder.jp/contests/abc191/tasks/abc191_b

import Foundation


func RemoveIt() {
    let readList1 = readLine()!.split(separator: " ").map { Int($0)! }
    let Alist = readLine()!.split(separator: " ").map { Int($0)! }
    
    let X = readList1[1]
    var result = ""

    
    
    Alist.forEach { num in
        if num != X {
            result += " \(num)"
        }
    }

    print(result.trimmingCharacters(in: .whitespacesAndNewlines))
    
    
}

//RemoveIt()
