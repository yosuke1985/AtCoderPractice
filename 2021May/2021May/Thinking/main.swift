//
//  candies.swift
//  2021May
//
//  Created by Yosuke Nakayama on 2021/05/03.
//
// https://atcoder.jp/contests/abc087/tasks/arc090_a

import Foundation


func candies() {
    
    let N = Int(readLine()!)!
    let items1 = readLine()!.split(separator: " ").map { Int($0)! }
    let items2 = readLine()!.split(separator: " ").map { Int($0)! }

    var calculatedSum: [Int] = []
    // N 4
    // items1 0...1
    // items2 1..<N
    for i in 0..<N {

        let items1Sum = items1[0...i].reduce(into: 0) { result, num in
            result += num
        }
        let items2Sum = items2[i..<N].reduce(into: 0) { result, num in
            result += num
        }
        let total = items1Sum + items2Sum
        calculatedSum.append(total)
//        print("items1Sum", items1Sum)
//        print("items2Sum", items2Sum)

    }


    print(calculatedSum.max()!)
 

}

candies()
