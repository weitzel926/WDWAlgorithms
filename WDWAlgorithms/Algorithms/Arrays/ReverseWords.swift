//
//  ReverseWords.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/26/24.
//

/*
 A word is defined as a sequence of non-space characters. The words in s will be separated by at least one space.

 Return a string of the words in reverse order concatenated by a single space.
 
 Trailing and leading spaces are possible
 */

import Foundation

class ReverseWords {
    static func reverseWords(_ s: String) -> String {
        var result: String = ""
        let array = Array(s)
        
        // Plan is to use nil wordStart and wordFinish pointers to key on our position and do this in place.
        var wordStart: Int? = nil
        var wordFinish: Int? = nil
        
        for index in 0..<array.count {
            // Look for the next non-whitespace value to start a word.
            if array[index] != " " && wordStart == nil {
                wordStart = index
            // If word is started, look for whitespace to end word.  Be sure to account for that you've started a word.
            } else if array[index] == " " && wordStart != nil && wordFinish == nil {
                wordFinish = index - 1
            // Be sure to catch the end of the string
            } else if index == array.count - 1 && wordFinish == nil {
                wordFinish = index
            }
            
            if let wordStartIndex = wordStart, let wordFinishIndex = wordFinish {
                let wordArray = array[wordStartIndex...wordFinishIndex]
                
                // Be sure not to add a trailing space if it is the first word.
                if result == "" {
                    result = String(wordArray)
                } else {
                    result = "\(String(wordArray)) \(result)"
                }
                
                // Nil out your pointers
                wordStart = nil
                wordFinish = nil
            }
        }
        
        return result
    }
}
