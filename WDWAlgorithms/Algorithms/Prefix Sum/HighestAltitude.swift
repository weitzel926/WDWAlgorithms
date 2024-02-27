//
//  HighestAltitude.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/27/24.
//

/*
 There is a biker going on a road trip. The road trip consists of n + 1 points at different altitudes. The biker starts his trip on point 0 with altitude equal 0.

 You are given an integer array gain of length n where gain[i] is the net gain in altitude between points i​​​​​​ and i + 1 for all (0 <= i < n). Return the highest altitude of a point.
 */

import Foundation

class HighestAltitude {
    static func largestAltitude(_ gain: [Int]) -> Int {
        var maxAltitude = 0
        var currentAltitude = 0
        
        for value in gain {
            currentAltitude += value
            
            if currentAltitude > maxAltitude {
                maxAltitude = currentAltitude
            }
        }
        
        return maxAltitude
    }
}
