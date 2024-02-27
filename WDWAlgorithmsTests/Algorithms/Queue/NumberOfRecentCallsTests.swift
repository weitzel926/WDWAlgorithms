//
//  NumberOfRecentCallsTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/27/24.
//

@testable import WDWAlgorithms
import XCTest

final class NumberOfRecentCallsTests: XCTestCase {
    func testNumberOfRecentCalls() {
        let recentCounter = RecentCounter()
        XCTAssertEqual(recentCounter.ping(1), 1)
        XCTAssertEqual(recentCounter.ping(100), 2)
        XCTAssertEqual(recentCounter.ping(3001), 3)
        XCTAssertEqual(recentCounter.ping(3002), 3)
    }
    
    func testNumberOfRecentCallsBetter() {
        let recentCounter = RecentCounter()
        XCTAssertEqual(recentCounter.pingBetter(1), 1)
        XCTAssertEqual(recentCounter.pingBetter(100), 2)
        XCTAssertEqual(recentCounter.pingBetter(3001), 3)
        XCTAssertEqual(recentCounter.pingBetter(3002), 3)
    }
}
