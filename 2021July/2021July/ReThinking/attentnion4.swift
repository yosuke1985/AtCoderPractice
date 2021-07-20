//
//  attention4.swift
//  2021July
//
//  Created by Yosuke Nakayama on 2021/07/20.
//
// https://atcoder.jp/contests/abc098/tasks/arc098_a


import Foundation

func attention4() {
    let N = Int(readLine()!)!
    let S = readLine()!
    var sumList: [Int] = []
    
    /*
     WEEWW
     */
    
    for (index, element) in Array(S).enumerated() {
        print(index, element)
        
        
//        if index == 0 {
//            // 右側 (index + 1)..<S.count
//
//
//        } else {
//            // 左側 0..<index, index, index + 1..<S.count
//
//        }
        
    }
    
}

//attention4()

func main() {
    let n = Int(readLine()!)!

    let aryS = readLine()!.map { String($0) }
    //＿＿＿＿＿＿＿＿＿＿＿＿＿＿ここまで入力
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

//main()
