//
//  RemoveStars.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/27/24.
//

/*
 You are given a string s, which contains stars *.

 In one operation, you can:

 Choose a star in s.
 Remove the closest non-star character to its left, as well as remove the star itself.
 Return the string after all stars have been removed.

 Note:

 The input will be generated such that the operation is always possible.
 It can be shown that the resulting string will always be unique.
 */

import Foundation

class RemoveStars {
    static func removeStars(_ s: String) -> String {
        var resultStack: [Character] = []
        
        for char in s {
            // per instructions, assuming first char isn't a star
            if char == "*" {
                _ = resultStack.remove(at: resultStack.count - 1)
            } else {
                resultStack.append(char)
            }
        }
        
        return String(resultStack)
    }
}
