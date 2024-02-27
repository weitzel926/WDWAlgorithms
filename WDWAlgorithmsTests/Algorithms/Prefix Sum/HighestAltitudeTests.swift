//
//  HighestAltitudeTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/27/24.
//

@testable import WDWAlgorithms
import XCTest

final class HighestAltitudeTests: XCTestCase {
    func testHighestAltitude() {
        XCTAssertEqual(HighestAltitude.largestAltitude([-5,1,5,0,-7]), 1)
        XCTAssertEqual(HighestAltitude.largestAltitude([-4,-3,-2,-1,4,3,2]), 0)
    }
}
