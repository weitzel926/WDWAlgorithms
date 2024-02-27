//
//  DiffernceOfTwoArrays.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/27/24.
//

import Foundation

/*
Given two 0-indexed integer arrays nums1 and nums2, return a list answer of size 2 where:

answer[0] is a list of all distinct integers in nums1 which are not present in nums2.
answer[1] is a list of all distinct integers in nums2 which are not present in nums1.
Note that the integers in the lists may be returned in any order.
*/

class DifferenceOfTwoArrays {
    static func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        var hash: [Int : String] = [:]
        
        for num in nums1 {
            hash[num] = "LEFT"
        }
        
        for num in nums2 {
            if hash[num] == "LEFT" {
                hash[num] = "BOTH"
            } else if hash[num] != "BOTH" {
                hash[num] = "RIGHT"
            }
        }
        
        var left: [Int] = []
        var right: [Int] = []
        
        for (key, value) in hash {
            if value == "LEFT" {
                left.append(key)
            } else if value == "RIGHT" {
                right.append(key)
            }
        }
        
        return [left, right]
    }
}
