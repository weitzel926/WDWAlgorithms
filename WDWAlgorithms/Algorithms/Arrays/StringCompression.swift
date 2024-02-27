//
//  StringCompression.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/26/24.
//

/*
 Begin with an empty string s. For each group of consecutive repeating characters in chars:

 If the group's length is 1, append the character to s.
 Otherwise, append the character followed by the group's length.
 The compressed string s should not be returned separately, but instead, be stored in the input character array chars. Note that group lengths that are 10 or longer will be split into multiple characters in chars.

 After you are done modifying the input array, return the new length of the array.
 */

import Foundation

class StringCompression {
    static func compress(_ chars: inout [Character]) -> Int {
        var blockCount = 1
        var writeIndex = 0
        
        for index in 0..<chars.count {
            // If we are at the end, we need to be sure we aren't looking ahead.
            // If we aren't at the end, we are checking that there is a change
            // in the run, which means we need to output to the array.
            if index+1 == chars.count || chars[index] != chars[index+1] {
                var blockString = "\(chars[index])"
                
                if blockCount != 1 {
                    blockString = "\(chars[index])\(blockCount)"
                }
                
                let blockCharacterArray = Array(blockString)
                
                for index in 0..<blockCharacterArray.count {
                    chars[writeIndex + index] = blockCharacterArray[index]
                }
                writeIndex += blockCharacterArray.count
                blockCount = 1
            } else {
                blockCount += 1
            }
        }
        
        // Didn't specify to trim, but we can. 
        chars.removeSubrange(writeIndex...)
        return chars.count
    }
}
