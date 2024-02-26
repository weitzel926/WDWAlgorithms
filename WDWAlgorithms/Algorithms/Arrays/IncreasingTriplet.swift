//
//  IncreasingTriplet.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/26/24.
//

/*
 Given an integer array nums, return true if there exists a triple of indices (i, j, k) such that i < j < k and nums[i] < nums[j] < nums[k]. If no such indices exists, return false.
 */

import Foundation

class IncreasingTriplet {
    // Assuming triplet means that j = i+1 and k = i+2 - unclear from instructions
    static func increasingTriplet(_ nums: [Int]) -> Bool {
        for index in 0..<nums.count {
            if index+2 < nums.count {
                if nums[index] < nums[index+1] && nums[index+1] < nums[index+2] {
                    return true
                }
            }
        }
        
        return false
    }
}
