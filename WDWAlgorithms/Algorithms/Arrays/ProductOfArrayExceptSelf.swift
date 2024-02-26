//
//  ProductOfArrayExceptSelf.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/26/24.
//

import Foundation

/*
 Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

 You must write an algorithm that runs in O(n) time and without using the division operation.
 */

class ProductOfArrayExceptSelf {
    static func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result: [Int] = Array(repeating: 0, count: nums.count)
        
        /*
         Strategy: Create an array of "left" products and an array of
         "right" products.  By multiplying them together, we get the
         value for that particular index.
         
         For example consider [1,2,3,4] which is [24, 12, 8, 6]
         
         For index 0:
         left = 1,  right = 2*3*4*1, 24   1*24 = 24
         
         For index 2:
         left = 1*1*2, 2  right = 4*1, 4  4*2 = 8
         
         For index 3:
         left = 1*1*2*3, 6  right = 1,  6*1 = 6
         
         We end up with three loops, which is order n.
         */
         
        var leftProducts = Array(repeating: 1, count: nums.count)
        var rightProducts = Array(repeating: 1, count: nums.count)
        
        leftProducts[0] = 1
        rightProducts[nums.count - 1] = 1
        
        for index in 1..<nums.count {
            leftProducts[index] = nums[index-1] * leftProducts[index-1]
        }
        
        for index in (0...nums.count-2).reversed() {
            rightProducts[index] = nums[index+1] * rightProducts[index+1]
        }
        
        for index in 0..<nums.count {
            result[index] = leftProducts[index] * rightProducts[index]
        }
        
        return result
    }
    
    static func productExceptSelfConstantSpace(_ nums: [Int]) -> [Int] {
        var result: [Int] = Array(repeating: 0, count: nums.count)
    
        result[0] = 1
        
        // Idea here is to dump the left array into the result array...
        for index in 1..<nums.count {
            result[index] = nums[index-1] * result[index-1]
        }
        
        // ...then as we calculate the right product, modify the result array in place.  
        var rightProduct = 1
        for index in (0...nums.count-1).reversed() {
            result[index] = result[index] * rightProduct
            rightProduct = rightProduct * nums[index]
        }
        
        return result
    }
}
