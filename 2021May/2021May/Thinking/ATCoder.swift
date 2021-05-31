//
//  ATCoder.swift
//  2021May
//
//  Created by Yosuke Nakayama on 2021/05/31.
//
// https://atcoder.jp/contests/abc122/tasks/abc122_b

import Foundation


func ATCoder() {
    let S = readLine()!
    var Slist = Array(S)
    let ACGT = ["A", "C", "G", "T"]
    var maxCount = 0
    
//    for i in Slist { // 0番目から
//
//
//
//        var isACCGT = false
//
//        for acgt in ACGT {
//            if "\(i)" == "\(acgt)" {
//                continue
//            } else {
//                isACCGT = true
//            }
//        }
//
//        if isACCGT {
//            count += 1
//        }
//
//
//    }
//
//
//    let croppepd = Slist.dropFirst()
//    print(Slist.dropFirst())
//
    
    
    while !Slist.isEmpty {
        
        var checkCount = 0
        
        func checkACCGT(hogeList:[Character]) {
            let firstChar = hogeList[0]
            var isACCGT = false
            for acgt in ACGT {
                if "\(firstChar)" == "\(acgt)" {
                    continue
                } else {
                    isACCGT = true
                }
            }
            
            if isACCGT {
                checkCount += 1
            }
            let droppedFirstList = Slist.dropFirst()
            checkACCGT(hogeList: Array(droppedFirstList))
        }
        
        checkACCGT(hogeList: Slist)

        if checkCount > maxCount {
            maxCount = checkCount
        }

        
        Slist = Array(Slist.dropFirst())
    }
}

//ATCoder()
