//
//  Magic3.swift
//  2021Nov
//
//  Created by yosuke.nakayama on 2021/11/22.
//

import Foundation

func Magic3() {
    let nsd = readLine()!.split(separator: " ").map { Int($0)! }

    let N = nsd[0]
    let S = nsd[1] // 暗唱にS以上はかかると効かない,
    let D = nsd[2] // D以下はダメージ与えられない
    
    var xyList:[[Int]] = []
    
    (0..<N).forEach { _ in
        let xy = readLine()!.split(separator: " ").map { Int($0)! }

//        xy[0] // X秒
        
        if xy[0] < S, D < xy[1] {
            xyList.append(xy)
        }
        
    }
    
    print(xyList.isEmpty ? "No" : "Yes")
}

//Magic3()
