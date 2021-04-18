//
//  cardGameForTow2.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/04/16.
//

import Foundation


func cardGameForTow2() {
    
    let N = Int(readLine()!)!
    var cardList = readLine()!.split(separator: " ").map { Int($0)! }
    cardList = cardList.sorted(by:{ $0 > $1})
//    print(cardList)
    let cardNum = cardList.count-1
    
    var totalAlice = 0
    var totalBob = 0
    (0...cardNum).forEach { (index) in
        if index % 2 == 0 {
//            print("alice index", index)
            totalAlice += cardList[index]
        }
    }
    
    (0...cardNum).forEach { (index) in
        if index % 2 != 0 {
//            print("bob index", index)

            totalBob += cardList[index]
        }
    }
    
    
    
    
    print(totalAlice - totalBob)
    
    
}

//cardGameForTow2()
