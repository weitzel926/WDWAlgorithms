//
//  MoveZeros.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/27/24.
//

import Foundation

/*
 Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

 Note that you must do this in-place without making a copy of the array.
 */

class MoveZeroes {
    // This approach is space optimal because it's in place, but it's 0(n^2) and expensive.
    static func moveZeroes(_ nums: inout [Int]) {
        var leftPointer = 0
        var rightPointer = nums.count - 1
        
        while leftPointer != rightPointer {
            if nums[leftPointer] == 0 {
                // Must move the zero all the way to the right pointer
                rightPointer -= 1
                for index in leftPointer...rightPointer {
                    let temp = nums[index]
                    nums[index] = nums[index+1]
                    nums[index+1] = temp
                    print(nums)
                }
            }
            leftPointer += 1
        }
    }
    
    static func moveZeroesOptimal(_ nums: inout [Int]) {
        var leftPointer = 0
        
        for rightPointer in 0..<nums.count {
            if nums[rightPointer] != 0 {
                let temp = nums[leftPointer]
                nums[leftPointer] = nums[rightPointer]
                nums[rightPointer] =  temp
                leftPointer += 1
            }
        }
    }
    
    /*
     Discussion
     
     The optimal solution is a partitioning solution.  These are a very common
     class of two pointer problems.  Consider [0,1,0,3,12]
     
     Step 1:
     [0,1,0,3,12]
      L
      R - Points to a zero, so we don't want to swap
     
     Step 2:
     [0,1,0,3,12]
      L
        R - Points to a non zero, so we swap and increment L.
     
     Step 3:
     [1,0,0,3,12]
        L
          R - Points to a zero, so no swap
     
     Step 4:
     [1,0,0,3,12]
        L
            R - Points to a non zero, so swap with L and increment L.
     
     Step 5:
     [1,3,0,0,12]
        L
               R - Points to a non zero, so we are done
     
     =================================
     Consider [1,0,2,0,3,0]
     
     Step 1:
     [1,0,2,0,3,0]
        L
      R - Points to a non zero, so we swap (but we are swapping with ourself)
     
     Step 2:
     [1,0,2,0,3,0]
        L
        R - Points to a zero, so we don't swap.  Increment L
     
     Step 3:
     [1,0,2,0,3,0]
        L
          R - Non zero, so we swap with L.  Increment L
     
     Step 4:
     [1,2,0,0,3,0]
          L
            R - zero, no swap
     
     Step 5:
     [1,2,0,0,3,0]
          L
              R - non zero, so we swap with L.  Increment L
     
     Step 6:
     [1,2,3,0,0,0]
            L
                R - non zero.  No swap.  Done.
     */
}
