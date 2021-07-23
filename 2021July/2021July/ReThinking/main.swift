//
//  zerosumrange3.swift
//  2021July
//
//  Created by Yosuke Nakayama on 2021/07/23.
//

import Foundation

func zerosumrange3() {
    let N = Int(readLine()!)!
    let aList = readLine()!.split(separator: " ").map { Int($0)! }
    
    var sumList:[Int] = []
    var calc = 0

    aList.forEach { num in
        sumList.append(calc)
        calc += num
    }
    
    print(sumList.sorted())
    

    var dictionary = [Int: Int]()
    sumList.forEach { dictionary[$0, default: 0] += 1 }
    
    print(dictionary)
    
    // 2の場合は１カウント
    // 3以上の場合は組み合わせ
}

zerosumrange3()
