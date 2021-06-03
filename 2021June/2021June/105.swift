//
//  105.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/03.
//
// https://atcoder.jp/contests/abc106/tasks/abc106_b

import Foundation


func num105() {
    let N = Int(readLine()!)!
    var count8 = 0

    for odd in 1...N where odd % 3 == 0 && odd % 2 != 0 || odd == 1 { //oddは奇数
//        print("odd", odd)
        var count = 0
        
        for j in 1...odd { // ood奇数の約数を調べる
            if odd % j == 0 {
                count += 1
            }
        }
        
        if count == 8 {
            count8 += 1
        }

    }
    
    print(count8)
    
    
}

num105()

