//
//  SameName.swift
//  SameName
//
//  Created by Yosuke Nakayama on 2021/08/31.
//

import Foundation

func SameName() {
    let N = Int(readLine()!)!

    let nameList = (0..<N).map { _ in readLine()! }
//    print(nameList)

    let nameSet = Set<String>(nameList.map { $0})
    

    print(N == nameSet.count ? "No" : "Yes")
    
    
}

//SameName()
