//
//  attention3.swift
//  2021July
//
//  Created by Yosuke Nakayama on 2021/07/13.
//

import Foundation

func attention3() {
    let n = Int(readLine()!)!
    let aryS = readLine()!.map { String($0) }

    var countLeft = 0
    var countRight = 0
    for i in 1..<n {
        if aryS[i] == "E" {
            countRight += 1
        }
    }
    var ans = countLeft + countRight
    // i = リーダのindex
    for i in 1..<n {
        if aryS[i - 1] == "W" {
            countLeft += 1
        }
        if aryS[i] == "E" {
            countRight -= 1
        }
        ans = min(ans, countLeft + countRight)
    }
    print(ans)
}

//attention3()
