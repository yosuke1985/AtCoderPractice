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

    for i in dayDreamlist {
        print(i, Array(i).last!)
        if n.last! == Array(i).last! {
            print(i)
            
            // 最後尾の文字列を削除できるかどうか canClipLastWord
            if true {
                
            } else {
                
            }
        }
    }
    
    func canClipLast(word: String, by: String) {
        
        var checkWord = word
        var byWord = by
        if by.last! == checkWord.last! {
            checkWord.removeLast()
            byWord.removeLast()
            canClipLast(word: checkWord, by: byWord)
        }
        
        
    }


}

dayDream()
