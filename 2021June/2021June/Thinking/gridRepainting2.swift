//
//  gridRepainting2.swift
//  2021May
//
//  Created by Yosuke Nakayama on 2021/04/28.
// https://atcoder.jp/contests/abc096/tasks/abc096_c

import Foundation


func gridRepainting2() {
    let hwList = readLine()!.split(separator: " ").map { Int($0)! }
    let H = hwList[0]
    let W = hwList[1]
    let minesweeperList = (0..<H).map { _ in Array(readLine()!) }
    /*
     (0,0)(1,0)(2,0)(3,0)(4,0)
     (0,1)(1,1)(2,1)(3,1)(4,1)
     (0,2)(1,2)(2,2)(3,2)(4,2)
     (0,3)(1,3)(2,3)(3,3)(4,3)
     (0,4)(1,4)(2,4)(3,4)(4,4)
     
     
     */
    //(w-1,h-1)(w,h-1)(w+1,h-1)
    //(w-1,h)(w,h)(w+1,h)
    //(w-1,h+1)(w,h+1)(w+1,h+1)
    
    //      (w,h-1)
    //(w-1,h)(w,h)(w+1,h)
    //       (w,h+1)
    
    //      (0,-1)
    //(-1,0)(w,h)(+1,0)
    //      (0,+1)
        
    // (h,w)
    
    var yesFlag = true
    var count = 0


    for w in 0..<W {
        for h in 0..<H {
            // (w,h)
            count = 0
            guard "\(minesweeperList[w][h])" == "#" else { continue }
            
            check: for i in [[0,-1],[0,1],[-1,0],[1,0]] {
                let x = w + i[0]
                let y = h + i[1]
                guard x >= 0 && y >= 0 && x < W && y < H else {
                    count += 1
                    continue check
                }
                
//                print("debug", minesweeperList[x][y])
                if minesweeperList[x][y] == "#" {
                    
                    continue check
                } else {
//                    print("count", count)
                    count += 1
                }
//                print("xy", x, y)

            }

            if count == 4 {
                yesFlag = false
                print("No")
                return
            }
        }
    }
    
    if yesFlag {
        print("Yes")
    }
    

}

//gridRepainting2() 
