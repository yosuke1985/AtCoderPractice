//
//  attention.swift
//  2021May
//
//  Created by Yosuke Nakayama on 2021/05/07.
//
// https://atcoder.jp/contests/abc098/tasks/arc098_a


import Foundation

func attention() {
    let N = Int(readLine()!)!
    let S = readLine()!
    
    let items = Array(S)
    
//    print(N)
//    print(items)
    
    var counts:[Int] = []
    
    for (index,_) in items.enumerated() {
//        print("index", index)
//        print("item", item)
        
        // left 0...index-1
        
        // center index
        
        // right index + 1 ... N-1
        
        if index == 0 { // 左端
            let eCount = items.dropFirst().compactMap { char in
                return char == "E" ? true : nil
            }
            .count
            counts.append(eCount)
        } else if index != N - 1 && index != 00 {
            let wCount = items[0..<index - 1].compactMap { char in
                char == "W" ? true : nil
            }.count
            
            let eCount = items[(index + 1)..<N].compactMap { char in
                char == "E" ? true : nil
            }.count
            
            let total:Int = wCount + eCount
            counts.append(total)
        } else { // 右端 index == N - 1
            let wCount = items.dropLast().compactMap { char in
                char == "W" ? true : nil
            }.count
            counts.append(wCount)
        }
    }
    
    print(counts.min()!)
    
}

//attention()

func attention2() {
    let N = Int(readLine()!)!
    let S = readLine()!
    
    let items = Array(S)
    
//    print(N)
//    print(items)
    
    var counts:[Int] = []
    
    for (index,_) in items.enumerated() {
//        print("index", index)
//        print("item", item)
        
        // left 0...index-1
        
        // center index
        
        // right index + 1 ... N-1
        
        if index == 0 { // 左端
            var eCount = 0
            items.dropFirst().forEach { char in
                if char == "E" {
                    eCount += 1
                }
            }
            counts.append(eCount)
        } else if index != N - 1 && index != 00 {
            var wCount = 0
            var eCount = 0
            items[0..<index - 1].forEach { char in
                if char == "W" {
                    wCount += 1
                }
            }
            
            items[(index + 1)..<N].forEach { char in
                if char == "E" {
                    eCount += 1
                }
            }
            
            let total:Int = wCount + eCount
            counts.append(total)
        } else { // 右端 index == N - 1
            var wCount = 0
            items.dropLast().forEach { char in
                if char == "W" {
                    wCount += 1
                }
            }
            counts.append(wCount)
        }
    }
    
    print(counts.min()!)
    
}

//attention2()
