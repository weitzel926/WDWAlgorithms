//
//  MaximumLevelSumOfBinaryTree.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/28/24.
//

/*
 Given the root of a binary tree, the level of its root is 1, the level of its children is 2, and so on.

 Return the smallest level x such that the sum of all the values of nodes at level x is maximal.
 */

import Foundation

class MaximumLevelSumOfBinaryTree {
    
    public class TreeNode {
        public var val: Int
        public var left: TreeNode?
        public var right: TreeNode?
        
        public init() {
            self.val = 0;
            self.left = nil;
            self.right = nil;
        }
        
        public init(_ val: Int) {
            self.val = val;
            self.left = nil;
            self.right = nil;
        }
        
        public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
            self.val = val
            self.left = left
            self.right = right
        }
        
        static func maxLevelSum(_ root: TreeNode?) -> Int {
            guard let root = root else {
                return 0
            }
            
            // We initialize the level to one because we already know that the
            // root level will be the first value that will be the max before
            // the BFS
            var level = 1
            
            var maxSum = Int.min
            var maxSumLevel = 1
            
            var queue: [TreeNode] = [root]
            
            // Main operation here is a BFS.  We use a queue for this.
            // The queue is an array where we remove front and add to back.
            while !queue.isEmpty {
                var levelSum = 0
                
                // queue.count represents the values in the current level.
                // We go through the queue and add the values while also
                // adding left/right nodes if they exist.
                for _ in 0..<queue.count {
                    let node = queue.removeFirst()
                    levelSum += node.val

                    if let left = node.left {
                        queue.append(left)
                    }
                    if let right = node.right {
                        queue.append(right)
                    }
                }
                
                // Finally, check the max value and save the current level.
                if levelSum > maxSum {
                    maxSumLevel = level
                    maxSum = levelSum
                }
                
                // Advance the while loop
                level += 1
            }
            
            return maxSumLevel
        }
    }
}
