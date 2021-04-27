//
//  minesweeper.swift
//  2021May
//
//  Created by Yosuke Nakayama on 2021/04/24.
//https://atcoder.jp/contests/abc075/tasks/abc075_b

import Foundation

func minesweeper() {
    
    let hwList = readLine()!.split(separator: " ").map { Int($0)! }
    let height = hwList[0]
    let width = hwList[1]
    let minesweeperList = (0..<height).map { _ in Array(readLine()!) }
    
//    print(height,width)
//    print(minesweeperList)
    
    
    //(0,0)(1,0)(2,0)
    //(0,1)(1,1)(2,1)
    //(0,2)(1,2)(2,2)
    
    //(-1,-1)(0,-1)(1,-1)
    //(-1,0)(0,0)(1,0)
    //(-1,1)(0,1)(1,1)
    
    //(h-1,w-1)(h,w-1)(h+1,w-1)
    //(h-1,w)(h,w)(h+1,w)
    //(h-1,w+1)(h,w+1)(h+1,w+1)
        
    // (h,w)
    
    var createdArray: [[String]] = Array(repeating: Array(repeating: "0", count: width), count: height)
    
    for h in 0..<height {
        for w in 0..<width {

            
            let target = minesweeperList[h][w]
            if target == "#" {
        
                for i in -1...1 {
                    for j in -1...1 {
                        let I = h + i
                        let J = w + j
                        
                        guard 0..<width ~= J, 0..<height ~= I else { continue }

                        let round = minesweeperList[I][J]

                        if round == "#" {
                            createdArray[I][J] = "#"
                        } else {
                            var before = Int(createdArray[I][J])!
                            before += 1
                            createdArray[I][J] = "\(before)"
                        }

                    }
                }
            }
        }
    }
  
    for i in createdArray {
        print(i.joined())
    }

    
}

