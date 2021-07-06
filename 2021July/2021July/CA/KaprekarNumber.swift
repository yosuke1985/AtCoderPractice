//
//  KaprekarNumber.swift
//  2021July
//
//  Created by Yosuke Nakayama on 2021/07/06.
//

import Foundation

extension BinaryInteger {
    var digits: [Int] {
        String(describing: self).compactMap { Int(String($0)) }
    }
}

func KaprekarNumber() {
    
    let readList = readLine()!.split(separator: " ").map { Int($0)! }
    let N = readList[0]
    let K = readList[1]
    var result = N
    
    func g1(x: Int) -> Int {
        let g1 =
            x.digits.sorted { $0 > $1 }
            .reduce(into: "") { result, num in
                result += "\(num)"
            }
        
        return Int(g1) ?? 0
    }
    
    func g2(x: Int) -> Int {
        
        let g2 = x.digits
            .sorted { $0 < $1 }
            .reduce(into: "") { result, num in
                result += "\(num)"
            }
     
        return Int(g2) ?? 0
    }
    
    func f(x: Int) -> Int {
        return g1(x: x) - g2(x: x)
    }
    
    (0..<K).forEach { _ in
        result = f(x: result)
    }
    
    print(result)
}

//KaprekarNumber()
