//
//  Visibility.swift
//  2021Nov
//
//  Created by yosuke.nakayama on 2021/11/27.
//

import Foundation

func Visibility() {
    let hwxy = readLine()!.split(separator: " ").map { Int($0)! }
    let H = hwxy[0]
    let W = hwxy[1]
    let X = hwxy[2]
    let Y = hwxy[3]
    var sList: [[Character]] = []
    (0..<H).forEach { _ in
        let S = String(readLine()!)

        sList.append(Array(S))
    }
    
    print(hwxy)
    print(sList)


}


//Visibility()
