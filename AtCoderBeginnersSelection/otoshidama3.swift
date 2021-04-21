//
//  otoshidama3.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/04/18.
//

import Foundation


func otoshidama3() {
    let readLineList = readLine()!.split(separator: " ").map { Int($0)! }
    let N = readLineList[0]
    let Y = readLineList[1]
    
//    print(N, Y)
    // 10000yen i 5000yen j  1000yen k = Y
    
    func check() {
        for i in 0...N {
            for j in 0...(N-i) {
                if i * 10000 + j * 5000 + (N - i - j) * 1000 == Y, N - i - j >= 0 {
                    print(i, j, N - i - j)
                    return
                }
            }
        }
        
        print(-1, -1, -1)
    }
    check()
}

otoshidama3()
