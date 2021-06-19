//
//  Rockpaperscissors.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/19.
//
// https://atcoder.jp/contests/abc204/tasks/abc204_a
// 0 はグー、1 はチョキを、2 はパーを表

import Foundation


func Rockpaperscissors() {
    let readlist = readLine()!.split(separator: " ").map { Int($0)! }
    let x = readlist[0]
    let y = readlist[1]
    
    var allJunken:Set<Int> = [0, 1, 2]
    
    if x != y {
        allJunken.remove(x)
        allJunken.remove(y)

        print(allJunken.first!)
    } else {
        print(x)
    }
    

}

//Rockpaperscissors()
