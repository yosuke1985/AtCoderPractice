//
//  dayDream.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/03/31.
//
// https://atcoder.jp/contests/abs/tasks/arc065_a
// ABC049C - 白昼夢
// dream dreamer erase eraser
// 5 7 5 6

import Foundation

func dayDream() {
    let s = readLine()!
    // true falseでつきすすむ
    let dayDreamlist = ["dream", "dreamer", "erase", "eraser"]

    func check(word: String) {
        if word == "" {
            print("YES")
            return
        }

        if word.hasPrefix("dreamer") { // "dream", "dreamer"
            let from = word.index(word.startIndex, offsetBy:"dreamer".count)
            let editedWord = String(word[from...])
            check(word: editedWord)
        } else if word.hasPrefix("dream") {
            let from = word.index(word.startIndex, offsetBy:"dream".count)
            let editedWord = String(word[from...])
            check(word: editedWord)
        } else if word.hasPrefix("eraser") {
            let from = word.index(word.startIndex, offsetBy:"eraser".count)
            let editedWord = String(word[from...])
            check(word: editedWord)
        } else if word.hasPrefix("erase") {
            let from = word.index(word.startIndex, offsetBy:"erase".count)
            let editedWord = String(word[from...])
            check(word: editedWord)
        } else if word.hasPrefix("aser") {
            let editedWord = "er" + word
            check(word: editedWord)
        } else {
            print("NO")
            return
        }


    }

    check(word: s)

}

//dayDream()
