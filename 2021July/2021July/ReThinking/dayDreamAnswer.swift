//
//  dayDream8.swift
//  2021July
//
//  Created by Yosuke Nakayama on 2021/07/09.
//

import Foundation

func dayDream8() {
    let list = ["dream", "dreamer", "erase", "eraser"]
    var N = readLine()!
    while let word = list.first(where:
                                    {
                                        $0 == N.suffix($0.count)
                                    }
    ){
        N.removeLast(word.count)
    }
    print(N.isEmpty ? "YES" : "NO")
}

dayDream8()
