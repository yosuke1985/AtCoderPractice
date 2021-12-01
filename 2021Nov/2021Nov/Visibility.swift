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


    /*
     場合分け
     紙とペンいる
     1. センター
     2. 左
     3. 右
     4. 上
     5. 下
     */
    
    // 1
    

    print(sList[X-1][Y-1] == "." ? "true" : "false")
    
    // 2
    
    sList[X-1] //row List, 0..<Y-1
    
    // 3
    
    sList[X-1] // row List, Y-1..sList[X-1].count
    
    // 4
    
    
}


//Visibility()
