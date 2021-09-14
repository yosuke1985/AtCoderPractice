//
//  Visibility.swift
//  Visibility
//
//  Created by Yosuke Nakayama on 2021/09/13.
//
// https://atcoder.jp/contests/abc197/tasks/abc197_b

import Foundation

func Visibility() {
    
    let hwxy = readLine()!.split(separator: " ").map { Int($0) }

    let H = hwxy[0]!
    let W = hwxy[1]!
    let X = hwxy[2]!
    let Y = hwxy[3]!
    var sList: [[Character]] = []
    
    var resultCount = 0
    
    (0..<H).forEach { _ in
        let readed = readLine()!
        let arry = Array(readed)
        sList.append(arry)
    }
    
    print(sList[X-1][Y-1])

    for x in 0..<H {
        for y in 0..<W {

            print(x,y)
            print(sList[x][y])

        }
    }
    
    var target = ""
    if target == "." {
        resultCount += 1
    }
    
}

Visibility()
