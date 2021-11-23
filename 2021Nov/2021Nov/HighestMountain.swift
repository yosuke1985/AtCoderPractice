//
//  HighestMountain.swift
//  2021Nov
//
//  Created by yosuke.nakayama on 2021/11/23.
//
// https://atcoder.jp/contests/abc201/tasks/abc201_b

import Foundation



func HighestMountain() {
    let N = Int(readLine()!)!
    var keyValuePairs: KeyValuePairs<String, Int> = KeyValuePairs()
    
    (0..<N).forEach { _ in
        let row = readLine()!.split(separator: " ")
            
        var dicList = keyValuePairs.reduce(into: [String: Int]()) { partialResult, kv in
            partialResult[kv.key] = kv.value
        }
        
        print("row", keyValuePairs)
        
    }

}

//HighestMountain()
