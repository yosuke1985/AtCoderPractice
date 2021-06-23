//
//  highestmountain.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/23.
//
// https://atcoder.jp/contests/abc201/tasks/abc201_b

import Foundation

struct Mountain {
    let name: String
    let height: Int
}

func highestmountain() {
    var mtList = [Mountain]()
    let N = Int(readLine()!)!
    (0..<N)
        .forEach { _ in

            let reads = readLine()!
                .split(separator: " ")
            mtList.append(Mountain(name: "\(reads[0])", height: Int("\(reads[1])")!)) // works!
            
        }
    
    mtList.sort { $0.height > $1.height }
    
    print(mtList[1].name)
    
    
}

//highestmountain()
