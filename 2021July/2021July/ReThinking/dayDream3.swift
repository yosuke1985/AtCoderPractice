//
//  dayDream2.swift
//  2021July
//
//  Created by Yosuke Nakayama on 2021/07/10.
//
// https://atcoder.jp/contests/abs/tasks/arc065_a


import Foundation

func dayDream3() {
    let list = ["dream", "dreamer", "erase", "eraser"]
    let N:String = readLine()!
    
    
//    while let
    
//
//    for i in list where i == N.suffix(i.count) {
//        checkingWord.removeLast(i.count)
//    }
//
    
    print(N)
    print(N.isEmpty ? "YES" : "NO")
    
    
    
    var str:String? = "Yes Takasu!"
    var repeatString:String = ""
    var i = 0

    // strがnilでない時、アンラップしてstampに代入します　nilならwhileループを実行しません
    while let stamp = str {
      repeatString += stamp
      i += 1
      if (i > 10) {
        break
      }
    }
    print(repeatString)
}

dayDream3()

