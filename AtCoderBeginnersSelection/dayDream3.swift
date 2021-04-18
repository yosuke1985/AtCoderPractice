//
//  dayDream3.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/04/12.
//
// https://atcoder.jp/contests/abs/tasks/arc065_a
// ABC049C - 白昼夢
// dream dreamer erase eraser
// 5 7 5 6

import Foundation

func dayDream3() {
    let s = readLine()!
    let dayDreamlist = ["dream", "dreamer", "erase", "eraser"]
    var isCheckedYes = false
    
    /*
     チェックしていって、チェックしたものは削除していく。
     */
    
    func check(notConfirmedText: String) {
        let containedWordList: [String] = dayDreamlist.compactMap { (item) -> String? in
            if notConfirmedText.hasPrefix(item) {
                return item
            } else {
                return nil
            }
        }
        
        
        if containedWordList.isEmpty {
            return
        } else {
            for containedWord in containedWordList {
                let editedNotconfirmedText = notConfirmedText.dropFirst(containedWord.count)
                if editedNotconfirmedText == "" {
                    print("YES")
                    isCheckedYes = true
                    return
                } else {
                    check(notConfirmedText: String(editedNotconfirmedText))
                }
            }
        }
    }
    
    check(notConfirmedText: s)
    
    if !isCheckedYes {
        print("NO")
    }
    
}

//dayDream3()
