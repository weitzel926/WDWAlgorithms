//
//  MaxAverageSubArray.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/27/24.
//

import Foundation

class MaxAverageSubArray {
    static func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var sum = 0.0
        
        if k == 1 {
            return Double(nums[0])
        }
        
        for startIndex in 0..<nums.count - k {
            if startIndex == 0 {
                for index in 0..<k {
                    sum += Double(nums[index])
                }
            } else {
                sum = sum - Double(nums[startIndex-1]) + Double(nums[startIndex + k - 1])
            }
        }
        
        return sum/Double(k)
    }
    
    // An alternative solution would have you calculate the sum of index 0 thru k
    // Then, start shifting the window at k.  That would elimate the k == 1 check. 
}
