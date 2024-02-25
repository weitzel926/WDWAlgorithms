//
//  ReverseVowels.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/25/24.
//

import Foundation

class ReverseVowels {
    static func reverseVowels(_ s: String) -> String {
        var result: [Character] = Array(s)
        
        var lastRightIndex = result.count
        
        for leftIndex in 0..<result.count {
            if ReverseVowels.isVowel(result[leftIndex]) {
                for rightIndex in (0..<lastRightIndex).reversed() {
                    lastRightIndex = rightIndex
                    
                    if ReverseVowels.isVowel(result[rightIndex]) {
                        let temp = result[leftIndex]
                        result[leftIndex] = result[rightIndex]
                        result[rightIndex] = temp
                        
                        break
                    } else {
                        if leftIndex >= rightIndex {
                            return String(result)
                        }
                    }
                }
            }
        }
        
        return String(result)
    }
    
    static func isVowel(_ char: Character) -> Bool {
        let lowerChar = char.lowercased()
        
        switch lowerChar {
        case "a", "e", "i", "o", "u":
            return true
        default:
            return false
        }
    }
}
