//
//  RightSideView.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/28/24.
//

/*
 Given the root of a binary tree, imagine yourself standing on the right side of it, return the values of the nodes you can see ordered from top to bottom.
 */

class RightSideView {
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
        
        static func rightSideView(_ root: TreeNode?) -> [Int] {
            guard let root = root else {
                return []
            }
            
            var result: [Int] = []
            var queue: [TreeNode] = [root]
            
            // This is a modified BFS
            
            // The while loop represents each line
            while !queue.isEmpty {
                
                // Since we know this is the start of the line, we can
                // peek at the last value in the queue.  This is the right
                // most value in the line.  We do it here because it's
                // before we start re-adding to the queue.
                if let lastValue = queue.last?.val {
                    result.append(lastValue)
                }
                
                // The modified BFS is where we go through the queue each
                // time.  This represents the line.  
                for _ in 0..<queue.count {
                    let node = queue.removeFirst()
                    
                    if let left = node.left {
                        queue.append(left)
                    }
                    
                    if let right = node.right {
                        queue.append(right)
                    }
                }
            }
            
            return result
        }
    }
}

