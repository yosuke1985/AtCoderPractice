//
//  dayDream4.swift
//  2021July
//
//  Created by Yosuke Nakayama on 2021/07/12.
// https://atcoder.jp/contests/abs/tasks/arc065_a

import Foundation

func dayDream4() {
    var n = readLine()!
    
    let dayDreamlist = ["dream", "dreamer", "erase", "eraser"]
    
    while let word = dayDreamlist.first(where: { dayDream in
        n.hasSuffix(dayDream)
    }) {
        n.removeLast(word.count)
    }
    
    print(n == "" ? "YES" : "NO")
    
}

//dayDream4()
