//
//  Magic3.swift
//  Magic3
//
//  Created by Yosuke Nakayama on 2021/09/10.
//

import Foundation

func Magic3() {
    let nsdList = readLine()!.split(separator: " ").map { Int($0)! }
    let N = nsdList[0]
    let S = nsdList[1]
    let D = nsdList[2]
    
    var resultList:[Int:Int] = [:]

    for _ in (1...N) {
        let xyList = readLine()!.split(separator: " ").map { Int($0)! }
        let X = xyList[0]
        let Y = xyList[1]
        
        guard S > X else { continue }
        guard D < Y else { continue }
        
        resultList[X] = Y
    }
        

    print(resultList.isEmpty ? "No" : "Yes")
    

    
}

//Magic3()
