//
//  DeleteMiddle.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/27/24.
//

@testable import WDWAlgorithms
import XCTest

final class DeleteMiddle: XCTestCase {
    func testExample1() {
        let listNode0 = ListNode(1)
        
        let listNode1 = ListNode(3)
        listNode0.next = listNode1
        
        let listNode2 = ListNode(4)
        listNode1.next = listNode2
        
        let listNode3 = ListNode(7)
        listNode2.next = listNode3
        
        let listNode4 = ListNode(1)
        listNode3.next = listNode4
        
        let listNode5 = ListNode(2)
        listNode4.next = listNode5
        
        let listNode6 = ListNode(6)
        listNode5.next = listNode6
        
        // verify middle
        let middle = ListNode.deleteMiddle(listNode0)
        XCTAssertEqual(middle?.val, 7)
        
        // verify list isn't broken
        XCTAssertEqual(listNode0.next?.val, 3)
        XCTAssertEqual(listNode1.next?.val, 4)
        XCTAssertEqual(listNode2.next?.val, 1)
        // Removed list node 3
        XCTAssertEqual(listNode4.next?.val, 2)
        XCTAssertEqual(listNode5.next?.val, 6)
    }
    
    func testExample2() {
        let listNode0 = ListNode(1)
        
        let listNode1 = ListNode(2)
        listNode0.next = listNode1
        
        let listNode2 = ListNode(3)
        listNode1.next = listNode2
        
        let listNode3 = ListNode(4)
        listNode2.next = listNode3
        
        // verify middle
        let middle = ListNode.deleteMiddle(listNode0)
        XCTAssertEqual(middle?.val, 3)
        
        // verify list isn't broken
        XCTAssertEqual(listNode0.next?.val, 2)
        XCTAssertEqual(listNode1.next?.val, 4)
    }
    
    func testExample3() {
        let listNode0 = ListNode(2)
        
        let listNode1 = ListNode(1)
        listNode0.next = listNode1
        
        // verify middle
        let middle = ListNode.deleteMiddle(listNode0)
        XCTAssertEqual(middle?.val, 1)
        
        // verify list isn't broken
        XCTAssertNil(listNode0.next?.val)
    }
}
