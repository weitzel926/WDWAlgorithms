//
//  MaxDepthTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/27/24.
//

@testable import WDWAlgorithms
import XCTest

final class MaxDepthTests: XCTestCase {
    typealias TreeNode = MaxDepth.TreeNode
    
    func testExample1() {
        /*
                    3
                   / \
                  9  20
                    /  \
                   15   7
         */
        
        let node3 = TreeNode(3)
        
        let node9 = TreeNode(9)
        node3.left = node9
        
        let node20 = TreeNode(20)
        node3.right = node20
        
        let node15 = TreeNode(15)
        node20.left = node15
        
        let node7 = TreeNode(7)
        node20.right = node7
        
        XCTAssertEqual(TreeNode.maxDepth(node3), 3)
    }
    
    func testExample2() {
        /*
                1
                 \
                  2
         */
        
        let node1 = TreeNode(1)
        
        let node2 = TreeNode(2)
        node1.right = node2
        
        XCTAssertEqual(TreeNode.maxDepth(node1), 2)
    }
}
