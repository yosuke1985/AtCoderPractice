//
//  boobyPrize.swift
//  boobyPrize
//
//  Created by Yosuke Nakayama on 2021/08/27.
//

import Foundation


func boobyPrize() {
    let N = Int(readLine()!)!
    let aList = readLine()!.split(separator: " ").map { Int($0)! }

    var editedList = aList.sorted(by: {$0 > $1})
//    print(editedList)
    let booby = editedList[1]
    let boobyIndex = aList.firstIndex(where: { $0 == booby })!
    
    print(boobyIndex+1)
    
}

boobyPrize()
