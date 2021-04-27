//
//  dayDream5.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/04/21.
//

import Foundation

func dayDream5() {
    let n = readLine()!
    
    let wordList: [String] =  ["dream", "dreamer", "erase", "eraser"]
    
    var sayYes = false
    
    func checkWord(targetWord: String) {
        let judgeList = wordList.map { (word) in
            return targetWord.hasPrefix(word)
        }
        
        for (index, i) in judgeList.enumerated() where i == true {
            let clipped = targetWord.dropFirst(wordList[index].count)
            if clipped == "" {
                print("YES")
                sayYes = true
                return
            }
            checkWord(targetWord: String(clipped))
            
        }
    }
    
    checkWord(targetWord: n)
    
    if !sayYes {
        print("NO")
    }
    
}

//dayDream5()
