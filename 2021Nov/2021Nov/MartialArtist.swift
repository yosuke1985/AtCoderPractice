//
//  MartialArtist.swift
//  2021Nov
//
//  Created by Yosuke on 2021/11/14.
//

import Foundation

func MartialArtist() {
    let N = Int(readLine()!)!
    var aList: [[Int]] = []
    
    (0..<N).forEach { _ in
        var row = readLine()!.split(separator: " ").map { Int($0)! }
            
        row.removeFirst() // T

        aList.append(row)
        
    }
    
    print(aList)
    
}

//MartialArtist()
