//
//  UnevenNumbers.swift
//  2021June
//
//  Created by Yosuke Nakayama on 2021/06/02.
// https://atcoder.jp/contests/abc136/tasks/abc136_b

import Foundation


func UnevenNumbers() {
    let N = Double(readLine()!)!
    
    /*
     print(log10(0.5)) // -0.3010299956639812
     print(log10(1.0)) // 0.0
     print(log10(8.0)) // 0.9030899869919435
     print(log10(10.0)) // 1.0
     print(log10(90.0)) // 1.954242509439325
     print(log10(100.0))//2.0
     print(log10(136.0)) // 2.1335389083702174
     print(log10(1000.0)) // 3

     print(pow(2,10)) //1024
     print(pow(10,log10(136.0))) //1024
     */

    /*
     log10(1)..<log10(9) 0.0..<1.0 ◎ 1桁
     log10(10)..<log10(99) 1.0..<2.0
     log10(100)..<log10(999) 2.0..<3.0 ◎ 3桁
     log10(1000)..<log10(9999) 3.0..<4.0
     log10(10000)..<log10(99999) 4.0..<5.0 ◎ 5桁
     */
    
    /*
     端数のとこの計算と
     それ以下の桁数の合計を足す
     */
    
    print("log10", log10(136.0))
    
//    let n = ceil(log10(N))
//    if n.truncatingRemainder(dividingBy: 2.0) == 0 {
//
//    } else {
//
//    }
    var lastNum = 0
    var totalCount = 0
    for i in 0..<5 where i % 2 == 0 && Double(i) < log10(N) {
        print(i)
        let sumRange = (i..<(i+1)).reduce(into: 0) { result, num in
            result += num
        }
        totalCount += sumRange
        lastNum = i
    }
    
    let restNum = N - pow(10.0, Double(lastNum))
    
    for i in 1...Int(restNum) {
        totalCount += i
    }
    
    print(totalCount)
    
}

//UnevenNumbers()
