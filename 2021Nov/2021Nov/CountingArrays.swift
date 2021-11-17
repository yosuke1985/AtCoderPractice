//
//  CountingArrays.swift
//  2021Nov
//
//  Created by Yosuke on 2021/11/12.
//

import Foundation

func CountingArrays() {
    let N = Int(readLine()!)!
    var arrayList: [[Int]] = []
    var numList: Set = Set<String>()
    
    (0..<N).forEach { _ in
        var row = readLine()!.split(separator: " ").map { Int($0)! }
            
        row.removeFirst()
            
        
        arrayList.append(row)
        
    }

    
//    print(arrayList)
    arrayList.forEach { itemList in
        
        var numString = ""
        itemList.forEach { int in
            numString += "\(int),"
        }
        
        numList.insert(numString)
        
    }
    
    print(numList.count)
}

//CountingArrays()
