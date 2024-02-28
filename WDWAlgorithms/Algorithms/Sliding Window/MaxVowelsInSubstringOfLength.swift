//
//  MaxVowelsInSubstringOfLength.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/28/24.
//

import Foundation

class MaxVowelsInSubstringOfLength {
    static func maxVowels(_ s: String, _ k: Int) -> Int {
        let array = Array(s)
        
        var max = 0
        var count = 0
        
        for index in 0..<k {
            if isVowel(array[index]) {
                count += 1
            }
        }
        
        max = count
        
        for index in k..<array.count {
            if isVowel(array[index-k]) {
                count -= 1
            }
            
            if isVowel(array[index]) {
                count += 1
            }
            
            if count > max {
                max = count
            }
            print("\(array[index])   \(count)  \(max)")
        }
        
        return max
    }
    
    static func isVowel(_ char: Character) -> Bool {
        if char == "a" || char == "A" ||
            char == "e" || char == "E" ||
            char == "i" || char == "I" ||
            char == "o" || char == "O" ||
            char == "u" || char == "U" {
            return true
        }
        
        return false
    }
}
