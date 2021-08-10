//
//  BoobyPrize.swift
//  2021July
//
//  Created by Yosuke Nakayama on 2021/08/10.
//

import Foundation

func boobyPrize() {
    let N = Int(readLine()!)!
    let aList: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
    let bList = aList.sorted { $0 > $1 }
    let targetIndex = aList.firstIndex(of: bList[1])!
    print(targetIndex+1)

}

boobyPrize()
