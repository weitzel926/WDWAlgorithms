//
//  MaxDepth.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/27/24.
//

import Foundation

class MaxDepth {
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
        
        static func maxDepth(_ root: TreeNode?) -> Int {
            guard let root = root else {
                return 0
            }
            
            if root.left == nil && root.right == nil {
                return 1
            }
            
            let left = maxDepth(root.left)
            let right = maxDepth(root.right)
            
            if left > right {
                return left+1
            }
            return right+1
            
        }
    }
}
