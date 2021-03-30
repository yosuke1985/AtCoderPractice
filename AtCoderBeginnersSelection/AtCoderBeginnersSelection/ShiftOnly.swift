//
//  ShiftOnly.swift
//  AtCoderBeginnersSelection
//
//  Created by Yosuke Nakayama on 2021/03/27.
//

import Foundation


/*
 １. 配列で受け取る。
 ２. 各要素をバイナリにする。
 3. 何回割り引いたかどうか divideNum = 0を用意する。

 4. 配列を引数とする関数を作成
  if 配列のすべての要素の末尾に０が含まれるかどうか
      含まれていればdivideNum++ し、Right Shiftする.
      その結果を3の関数で再帰
 else:
     ふくまれていなければreturnする。
 
 6
 382253568 723152896 37802240 379425024 404894720 471526144
 */

func main2() {
    
    let countNum = Int(readLine()!)!
    
    let numList = readLine()!.split(separator: " ").map { Int($0)! }
    var divideNum = 0
    
    var binaryList = numList.map { (num) -> String in
        let str = String(num, radix: 2)
        return str
    }

    //print("binaryList", binaryList)

    func delete(items: [String]) {
        var hasZero = true
        var changed = items
        items.forEach { (item) in
            if !item.hasSuffix("0") {
                hasZero = false
            }
        }
        
        if hasZero {
            changed = items.map { (item) in
                String(item.dropLast())
            }
            divideNum += 1
            delete(items: changed)
        }
    }

    delete(items: binaryList)

    //print("divideNum", divideNum)
    print(divideNum)
}

func onlyShift() {
    
    let n = Int(readLine()!)!
    var numList = readLine()!.split(separator: " ").map { Int($0)! }
    
    var countNum = 0
    while numList.allSatisfy({ (num) -> Bool in
        num.isMultiple(of: 2)
    }) {
        countNum += 1
        numList = numList.map { (num) in
            return num / 2
        }
    }
    
    print(countNum)
}

