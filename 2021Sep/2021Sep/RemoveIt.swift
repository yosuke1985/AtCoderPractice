//
//  RemoveIt.swift
//  RemoveIt
//
//  Created by Yosuke Nakayama on 2021/09/09.
//

import Foundation

func RemoveIt() {
    let nxList = readLine()!.split(separator: " ").map { Int($0)! }
    var aList = readLine()!.split(separator: " ").map { Int($0)! }

    let X = nxList[1]
    
    aList = aList.compactMap({ num in
        num == X ? nil : num
    })
    
    let result = aList.reduce(into: "") { result, num in
        result += "\(num) "
    }
    print(result)
    
}

//RemoveIt()
