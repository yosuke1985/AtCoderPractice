//
//  shiftOnly2.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/04/15.
//

/*
 3
 8 12 40
 */
import Foundation


func shiftOnly2() {
    let n =  Int(readLine()!)!
    let numList = readLine()!.split(separator: " ").map { Int($0)! }
    var countRightShift = 0
    
//    print(n)
//    print(numList)

    let numBinList = numList.map { (num) -> String in
        return String(num, radix: 2)
    }
    
    

    
    func bin(numBinList:[String]) {
        // すべての要素の右端に0があるかどうか
        
        let isBin = numBinList.allSatisfy { (numBin) -> Bool in
            return numBin.hasSuffix("0")
        }
        
        if isBin {
            countRightShift += 1
            // 右端削除したものをつくる
            let poppedNumBinList: [String] = numBinList.map { (numBin) -> String in
                return String(numBin.dropLast())
            }
            bin(numBinList: poppedNumBinList)
        } else {
            return
        }
    }
    
    bin(numBinList: numBinList)
    
    print(countRightShift)
    
}


//shiftOnly2()
