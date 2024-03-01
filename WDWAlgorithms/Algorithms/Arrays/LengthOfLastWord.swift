//
//  LengthOfLastWord.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/29/24.
//

import Foundation

class LengthOfLastWord {
    static func lengthOfLastWord(_ s: String) -> Int {
        let array = Array(s)
        
        var count = 0
        
        for index in (0..<array.count).reversed() {
            if array[index] == " " {
                if count != 0 {
                    return count
                }
            } else {
                count += 1
            }
        }
        return count
    }
}
