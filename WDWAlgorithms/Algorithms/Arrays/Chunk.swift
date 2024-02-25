//
//  Chunk.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/14/24.
//

// --- Directions
// Given an array and chunk size, divide the array into many subarrays
// where each subarray is of length size
// --- Examples
// chunk([1, 2, 3, 4], 2) --> [[ 1, 2], [3, 4]]
// chunk([1, 2, 3, 4, 5], 2) --> [[ 1, 2], [3, 4], [5]]
// chunk([1, 2, 3, 4, 5, 6, 7, 8], 3) --> [[ 1, 2, 3], [4, 5, 6], [7, 8]]
// chunk([1, 2, 3, 4, 5], 4) --> [[ 1, 2, 3, 4], [5]]
// chunk([1, 2, 3, 4, 5], 10) --> [[ 1, 2, 3, 4, 5]]

import Foundation

class Chunk<T: Comparable> {
    static func chunk(_ array: Array<T>, chunkSize: Int) -> Array<Array<T>> {
        var result:Array<Array<T>> = []
        var currentChunk:Array<T> = []
        
        for value in array {
            currentChunk.append(value)
            
            if currentChunk.count == chunkSize {
                result.append(currentChunk)
                currentChunk = []
            }
        }
        
        if !currentChunk.isEmpty {
            result.append(currentChunk)
        }
        
        return result
    }
}
