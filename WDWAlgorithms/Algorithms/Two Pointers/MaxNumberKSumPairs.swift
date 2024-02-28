//
//  MaxNumberKSumPairs.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/28/24.
//

/*
 You are given an integer array nums and an integer k.

 In one operation, you can pick two numbers from the array whose sum equals k and remove them from the array.

 Return the maximum number of operations you can perform on the array.
 */

import Foundation

class MaxNumberKSumPairs {
    static func maxOperations(_ nums: [Int], _ k: Int) -> Int {
        // If we sort the array, we can use a two pointer approach
        var sorted = nums.sorted()
        
        var left = 0
        var right = nums.count - 1
        
        var result = 0
        
        // Be sure to use less than here, not equals.  The may never equal
        while left < right {
            let sum = nums[left] + nums[right]
            if sum < k {
                // Since the sum is bigger than k, we need to make the sum smaller, so we move the right pointer down.
                right -= 1
            } else if sum > k {
                // Since the sum is smaller than k, we need to make the sum bigger, so we move the left pointer up.
                left += 1
            } else {
                // We record we found a match and move both pointers to take those values out of the calculation.
                result += 1
                right -= 1
                left += 1
            }
        }
        
        return result
    }
}
