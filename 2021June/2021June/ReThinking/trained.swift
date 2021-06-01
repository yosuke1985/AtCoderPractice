//
//  trained.swift
//  2021May
//
//  Created by Yosuke Nakayama on 2021/05/02.
//

import Foundation

func trained() {
    let N = Int(readLine()!)!
    let numbers: [Int] = (0..<N).map { _ in Int(readLine()!)! }
    
//    print("N", N)
//    print("numbers", numbers)
        
    var countNum = 0
    var found = false
    
    func function(number: Int) {
        guard countNum < numbers.count else { return }
        countNum += 1
        let selectedNum = numbers[number - 1]

        if selectedNum == 2 {
            print(countNum)
            found = true
        } else{
            function(number:selectedNum)
        }
    }
    
    function(number: 1)

    if !found {
        print(-1)
    }
}

//trained()

// 再帰はつかわず、フラグ使わずにもっとシンプルにかける。
