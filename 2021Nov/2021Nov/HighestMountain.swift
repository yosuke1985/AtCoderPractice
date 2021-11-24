//
//  HighestMountain.swift
//  2021Nov
//
//  Created by yosuke.nakayama on 2021/11/23.
//
// https://atcoder.jp/contests/abc201/tasks/abc201_b

import Foundation

struct Mountain {
    var name: String
    var height: Int
}

func HighestMountain() {
    let N = Int(readLine()!)!
    var mtList: [Mountain] = []
    (0..<N).forEach { _ in
        let row = readLine()!.split(separator: " ")
        let mt = Mountain(name: String(row[0]), height: Int(row[1])!)
        
        mtList.append(mt)
    }
    
    mtList = mtList.sorted { $0.height > $1.height }
    print(mtList[1].name)

}

//HighestMountain()

