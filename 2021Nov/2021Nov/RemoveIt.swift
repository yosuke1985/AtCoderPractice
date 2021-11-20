//
//  RemoveIt.swift
//  2021Nov
//
//  Created by Yosuke on 2021/11/20.
//

import Foundation

func RemoveIt() {
    
    let nx = readLine()!.split(separator: " ").map { Int($0)! }
    let alist = readLine()!.split(separator: " ").map { Int($0)! }
    
    let N = nx[0]
    let X = nx[1]
    

    let result = alist.reduce(into: "") { partialResult, num in
        if num != X {
            partialResult += "\(num) "
        }
        
    }.trimmingCharacters(in: .whitespaces)
    
    
    print(result)
}

//RemoveIt()
