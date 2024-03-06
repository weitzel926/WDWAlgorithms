//
//  MaxTwinSumTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 3/1/24.
//

@testable import WDWAlgorithms
import XCTest

final class MaxTwinSumTests: XCTestCase {
    typealias ListNode = MaxTwinSum.ListNode
    
    func testMaxTwinSumExample1() {
        let node4 = ListNode(1)
        let node3 = ListNode(2, node4)
        let node2 = ListNode(4, node3)
        let node1 = ListNode(5, node2)
        
        XCTAssertEqual(MaxTwinSum.pairSum(node1), 6)
    }
    
    func testMaxTwinSumExample2() {
        let node4 = ListNode(3)
        let node3 = ListNode(2, node4)
        let node2 = ListNode(3, node3)
        let node1 = ListNode(4, node2)
        
        XCTAssertEqual(MaxTwinSum.pairSum(node1), 7)
    }
    
    func testMaxTwinSumExample3() {
        let node2 = ListNode(100000)
        let node1 = ListNode(1, node2)
        
        XCTAssertEqual(MaxTwinSum.pairSum(node1), 100001)
    }
}
