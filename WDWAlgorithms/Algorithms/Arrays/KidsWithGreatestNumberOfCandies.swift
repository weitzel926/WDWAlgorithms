//
//  KidsWithGreatestNumberOfCandies.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/25/24.
//

import Foundation

/*
There are n kids with candies. You are given an integer array candies, where each candies[i] represents the number of candies the ith kid has, and an integer extraCandies, denoting the number of extra candies that you have.

Return a boolean array result of length n, where result[i] is true if, after giving the ith kid all the extraCandies, they will have the greatest number of candies among all the kids, or false otherwise.

Note that multiple kids can have the greatest number of candies.
*/

class KidsWithGreatestNumberOfCandies {
    static func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var result = Array<Bool>(repeating: false, count: candies.count)
        
        var maxValue: Int = candies[0]
        
        for index in 1..<candies.count {
            if candies[index] > maxValue {
                maxValue = candies[index]
            }
        }
        
        for index in 0..<candies.count {
            if candies[index] + extraCandies >= maxValue {
                result[index] = true
            }
        }
        
        return result
    }
}
