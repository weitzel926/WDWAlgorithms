//
//  ReverseInt.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/13/24.
//

import Foundation

class ReverseInt {
    static func reverseInt(_ n: Int) -> Int {
        let isNegative = n < 0
        
        var array = Array(String(abs(n)))
        
        for index in 0..<array.count/2 {
            let temp = array[index]
            array[index] = array[array.count - index - 1]
            array[array.count - index - 1] = temp
        }
        
// Note, the case below can handle leading zeros, so you don't really need this. 
//        while array[0] == "0" {
//            array.remove(at: 0)
//        }
        
        let result = Int(String(array))
        
        return isNegative ? result! * -1 : result!
    }
}
