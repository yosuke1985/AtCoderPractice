//
//  dayDream2.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/04/08.
//
// https://atcoder.jp/contests/abs/tasks/arc065_a
// ABC049C - 白昼夢
// dream dreamer erase eraser
// 5 7 5 6


import Foundation

func dayDream2() {
    let s = readLine()!
    let dayDreamlist = ["dream", "dreamer", "erase", "eraser"]

    let maxCount = Int(ceil(Double(s.count / dayDreamlist.map { $0.count }.max()!)))
    var guessList: [String] = []
    
    
    func checkGuess(items: [String], _excludedItem: String? = nil) {
        
        while guessList.count <= maxCount {
            for (index, i) in dayDreamlist.enumerated() {
                print("i", i)
                
                if let excludedItem = _excludedItem {
                    if i == excludedItem {
                        continue
                    } else {
                        guessList.append(i)
                        let guessString = guessList.joined()
                        
                        if guessString == s {
                            print("YES")
                            return
                        } else if index != dayDreamlist.count {
                            guessList.removeLast()
                            continue
                        } else {
                            if guessList.count >= 2 {
                                guessList.removeLast()
                                let removedItem = guessList.removeLast()
                                checkGuess(items: guessList, _excludedItem: removedItem)
                            } else {
                                guessList.removeLast()
                                checkGuess(items: guessList)
                            }
                        }
                    }
                } else {
                    guessList.append(i)
                    let guessString = guessList.joined()
                    
                    if guessString == s {
                        print("YES")
                        return
                    } else if index != dayDreamlist.count {
                        if s.hasPrefix(i) {
                            checkGuess(items: guessList)
                            
                        } else {
                            guessList.removeLast()
                            continue
                        }
                    } else {
                        if guessList.count >= 2 {
                            guessList.removeLast()
                            let removedItem = guessList.removeLast()
                            checkGuess(items: guessList, _excludedItem: removedItem)
                        } else {
                            guessList.removeLast()
                            checkGuess(items: guessList)
                        }
                    }
                }

            }
        }
    }

    
    checkGuess(items: guessList)
    
    print("NO")

}

//dayDream2()
