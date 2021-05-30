//
//  countABC.swift
//  2021May
//
//  Created by yosuke.nakayama on 2021/05/30.
//
// https://atcoder.jp/contests/abc150/tasks/abc150_b

import Foundation


func countABC() {
    let N = Int(readLine()!)!
    let S = readLine()!
    let Slist = Array(S)

    var count = 0
    
    for i in 0..<N {
        guard i + 3 <= N else { continue }
        if Slist[i] == "A" && Slist[i+1] == "B" && Slist[i+2] == "C" {
            count += 1
        }
    }
    
    print(count)

}

//countABC()

/*
 let n = Int(readLine()!)!
 precondition(3 <= n && n <= 50)
 let s = readLine()!
 precondition(s.count == n)

 var abcCount = 0
 for i in 0...(n - 3) {
     let from = s.index(s.startIndex, offsetBy: i)
     let to = s.index(s.startIndex, offsetBy: i + 2)
     let substring = String(s[from...to])
     if substring == "ABC" {
         abcCount += 1
     }
 }
 print(abcCount)

 */
