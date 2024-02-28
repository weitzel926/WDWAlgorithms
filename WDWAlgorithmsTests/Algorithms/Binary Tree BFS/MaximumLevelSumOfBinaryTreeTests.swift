//
//  MaximumLevelSumOfBinaryTreeTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/28/24.
//

@testable import WDWAlgorithms

import XCTest

final class MaximumLevelSumOfBinaryTreeTests: XCTestCase {
    typealias TreeNode = MaximumLevelSumOfBinaryTree.TreeNode
    
    func testMaxLevelSum_Example1() {
        /*
                    1
                   / \
                  7   0
                /  \
               7    -8
         */
        
        let node1 = TreeNode(1)
        
        let node7a = TreeNode(7)
        node1.left = node7a
        
        let node0 = TreeNode(0)
        node1.right = node0
        
        let node7b = TreeNode(7)
        node7a.left = node7b
        
        let nodeMinus8 = TreeNode(-8)
        node7a.right = nodeMinus8
        
        XCTAssertEqual(TreeNode.maxLevelSum(node1), 2)
    }
}
