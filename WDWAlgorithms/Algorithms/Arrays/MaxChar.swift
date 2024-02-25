//
//  MaxChar.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/14/24.
//

import Foundation

// Given a string, return the character that is most
// commonly used in the string.  Return nil if empty.

class MaxChar {
    static func maxChar(_ value: String) -> Character? {
        if value.isEmpty {
            return nil
        }
        
        var map = Dictionary<Character, Int>()
        
        for character in value {
            map[character] = (map[character] ?? 0) + 1
        }
        
        var result: Character? = nil
        var max = 0
        
        for (key, value) in map {
            if value > max {
                result = key
                max = value
            }
        }
        
        // Note, it will be undefined which one we get if there are two with the same
        // counts.  This should return a char array, really 
        
        return result
    }
}
