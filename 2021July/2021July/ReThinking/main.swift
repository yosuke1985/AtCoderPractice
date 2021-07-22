//
//  zerosumrange.swift
//  2021July
//
//  Created by Yosuke Nakayama on 2021/07/22.
//

import Foundation

func solve(_ N:Int, _ A:[Int]) {
    var count = [Int: Int]()
    var answer = 0
    var sum = 0
    count[0, default: 0] += 1
    for a in A {
        sum += a
        answer += count[sum, default: 0]
        count[sum, default: 0] += 1
    }
    print(answer)
}

func zerosumrange() {
    var tokenIndex = 0, tokenBuffer = [String]()
    func readString() -> String {
        if tokenIndex >= tokenBuffer.count {
            tokenIndex = 0
            tokenBuffer = readLine()!.split(separator: " ").map { String($0) }
        }
        defer { tokenIndex += 1 }
        return tokenBuffer[tokenIndex]
    }
    func readInt() -> Int { Int(readString())! }
    func readDouble() -> Double { Double(readString())! }
    let N = readInt()
    var A = [Int]()
    for _ in 0..<N {
        A.append(readInt())
    }
    solve(N, A)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

zerosumrange()
