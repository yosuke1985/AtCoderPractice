//
//  rgb.swift
//  2021May
//
//  Created by Yosuke Nakayama on 2021/04/24.
//

import Foundation


func rgb() {
    let list = readLine()!.split(separator: " ").map { String($0) }
    let listString = list.joined()
    if let listInt = Int(listString), listInt.isMultiple(of: 4) {
        print("YES")
    } else {
        print("NO")
    }
}

//rgb()
