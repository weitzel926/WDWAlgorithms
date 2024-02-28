//
//  RightSideViewTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/28/24.
//

@testable import WDWAlgorithms
import XCTest

final class RightSideViewTests: XCTestCase {
    typealias TreeNode = RightSideView.TreeNode
    
    func testRightSideViewTests_example1() {
        /*
                    1
                   / \
                  2   3
                   \   \
                    5   4
         */
        
        let node1 = TreeNode(1)
        
        let node2 = TreeNode(2)
        node1.left = node2
        
        let node3 = TreeNode(3)
        node1.right = node3
        
        let node5 = TreeNode(5)
        node2.right = node5
        
        let node4 = TreeNode(4)
        node3.right = node4
        
        XCTAssertEqual(TreeNode.rightSideView(node1), [1,3,4])
    }
    
    func testRightSideViewTests_example1b() {
        /*
                    1
                   / \
                  2   5
                   \
                    3
         */
        
        let node1 = TreeNode(1)
        
        let node2 = TreeNode(2)
        node1.left = node2
        
        let node5 = TreeNode(5)
        node1.right = node5
        
        let node3 = TreeNode(3)
        node2.right = node3
        
        XCTAssertEqual(TreeNode.rightSideView(node1), [1,5,3])
    }
    
    func testRightSideViewTests_example2() {
        let node1 = TreeNode(1)
        
        let node3 = TreeNode(3)
        node1.right = node3
        
        XCTAssertEqual(TreeNode.rightSideView(node1), [1,3])
    }
    
    func testRightSideViewTests_example3() {
        XCTAssertEqual(TreeNode.rightSideView(nil), [])
    }
}
