//
//  dayDream.swift
//  2021May
//
//  Created by Yosuke Nakayama on 2021/04/29.
//
// https://atcoder.jp/contests/abs/tasks/arc065_a

import Foundation


func dayDream() {
    let n = readLine()!
    
    let dayDreamlist = ["dream", "dreamer", "erase", "eraser"]
    var flag = true
    func checkWord(word: String) {
        for i in dayDreamlist where n.hasSuffix(i) {
            let cutted = word.dropLast(i.count)
            if cutted == "" {
                print("YES")
                flag = false
                return
            } else if cutted.count <= 4 {
                break
            } else {
                checkWord(word: "\(cutted)")
            }
        }
    }
    
    checkWord(word: n)
    
    if flag {
        print("NO")
    }
    
}

//dayDream()


func dayDream2() {
    let dayDreamlist = ["dream", "dreamer", "erase", "eraser"]
    var n = readLine()!
    
    while let word = dayDreamlist.first(where: { $0 == $0.suffix($0.count) })  {
        n.removeLast(word.count)
    }

    print(n.isEmpty ? "YES" : "NO")
}


