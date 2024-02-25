//
//  CanPlaceFlowers.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/25/24.
//

/*
 You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots.

 Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return true if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule and false otherwise.
 */

import Foundation

class CanPlaceFlowers {
    static func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var numberLeft = n
        
        for index in 0..<flowerbed.count {
            let previous = index > 0 ? flowerbed[index - 1] : nil
            let current = flowerbed[index]
            let next = index < flowerbed.count - 1 ? flowerbed[index + 1] : nil
            
            if previous != 1, current == 0, next != 1 {
                numberLeft -= 1
            }
            
            if numberLeft == 0 {
                return true
            }
            
            let leftToCheck = flowerbed.count - index
            if n > leftToCheck {
                return false
            }
        }
        
        return false
    }
}
