//
//  highestmountain.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/23.
//

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
            
            /* Pattern A */
            readLine()!
                .split(separator: " ")
                .forEach {
                    mtList.append(Mountain(name: "\($0[0])", height: Int("\($0[1])")!)) //  Error: No exact matches in call to subscript
                }
            
            /* Pattern B */
            let reads = readLine()!
                .split(separator: " ")
            mtList.append(Mountain(name: "\(reads[0])", height: Int("\(reads[1])")!)) // works!
            
        }
    
}
    
    
    var mtStr = ""
    
    //    let secondHighNum = STitems.map { Int($0[1])! }.sorted { $0 > $1 } [1]
    
    //    STitems
    //        .forEach {
    //            if Int($0[1])! == secondHighNum {
    //                mtStr = "\($0[0])"
    //            }
    //        }
    
    print(mtStr)
    
}

highestmountain()
