//
//  doyoukno2highmt.swift
//  doyoukno2highmt
//
//  Created by Yosuke Nakayama on 2021/09/11.
//

import Foundation

struct Mountain {
    var name: String
    var height: Int
}
func doyoukno2highmt() {
    let N = Int(readLine()!)!
    var mtList:[Mountain] = []
    (1..<N).forEach { _ in
        
        
        let mt = readLine()!.split(separator: " ").map { String($0) }
        mtList.append(Mountain(name: mt[0], height: Int(mt[1])!))
    }


    mtList = mtList.sorted { $0.height > $1.height}
    
    print(mtList[1].name)
}

//doyoukno2highmt()
