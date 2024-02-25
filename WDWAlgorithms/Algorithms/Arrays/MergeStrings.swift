//
//  MergeStrings.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/21/24.
//

import Foundation

class MergeStrings {
    static func mergeStrings(_ word1: String, _ word2: String) -> String {
        var result: [Character] = []
        
        let word1Array = Array(word1)
        let word2Array = Array(word2)
        
        let smallest = word1Array.count < word2Array.count ? word1Array.count : word2Array.count
        
        for index in 0..<smallest {
            result.append(word1Array[index])
            result.append(word2Array[index])
        }
        
        for index in smallest..<word1Array.count {
            result.append(word1Array[index])
        }
        
        for index in smallest..<word2Array.count {
            result.append(word2Array[index])
        }
        
        return String(result)
    }
}
