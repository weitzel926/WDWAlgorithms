//
//  CanPlaceFlowersTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/25/24.
//

@testable import WDWAlgorithms
import XCTest

final class CanPlaceFlowersTests: XCTestCase {
    func testCanPlaceFlowers() {
        XCTAssertTrue(CanPlaceFlowers.canPlaceFlowers([1,0,0,0,1], 1))
        XCTAssertFalse(CanPlaceFlowers.canPlaceFlowers([1,0,0,0,1], 2))
        XCTAssertTrue(CanPlaceFlowers.canPlaceFlowers([0], 1))
        XCTAssertFalse(CanPlaceFlowers.canPlaceFlowers([0], 2))
        XCTAssertTrue(CanPlaceFlowers.canPlaceFlowers([0,0,0,0,1], 1))
        XCTAssertTrue(CanPlaceFlowers.canPlaceFlowers([0,0,0,0,1], 2))
    }
}
