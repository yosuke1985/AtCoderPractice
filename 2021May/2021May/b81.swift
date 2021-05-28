//
//  b81.swift
//  2021May
//
//  Created by Yosuke Nakayama on 2021/05/28.
//

import Foundation


func b81() {
    let N = Int(readLine()!)!
    for i in 1...9 {
        //        print(i)
        if N % i == 0 && 0...9 ~= Int(N/i) {
            print("Yes")
            return
        }
    }
    
    print("No")
}

//b81()
