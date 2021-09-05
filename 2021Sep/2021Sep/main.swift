//
//  ManyBalls.swift
//  ManyBalls
//
//  Created by Yosuke Nakayama on 2021/09/03.
//
// https://atcoder.jp/contests/abc216/tasks/abc216_c

import Foundation

func ManyBalls() {
    let N = Int(readLine()!)!
    var count = 0
    
    var calc = N
    
    var answerList = Array<Character>()
    
    while count < 120 {
        if calc == 0 {
            var output = ""
            
            answerList.forEach { char in
                output += "\(char)"
            }
            print(output)
            return
        }
        
        if calc % 2 == 0 {
            calc = calc / 2
            answerList.insert(contentsOf: "A", at: 0)
        } else {
            calc -= 1
            answerList.insert(contentsOf: "B", at: 0)
        }
        


        
        count += 1
    }
    
}

ManyBalls()
