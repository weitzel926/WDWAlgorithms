//
//  IncreasingTripletTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/26/24.
//

@testable import WDWAlgorithms
import XCTest

final class IncreasingTripletTests: XCTestCase {
    func testIncreasingTriplet() {
        XCTAssertTrue(IncreasingTriplet.increasingTriplet([1,2,3,4,5]))
        XCTAssertFalse(IncreasingTriplet.increasingTriplet([5,4,3,2,1]))
        XCTAssertTrue(IncreasingTriplet.increasingTriplet([2,1,5,0,4,6]))
        XCTAssertFalse(IncreasingTriplet.increasingTriplet([1,1,1,1,1,1]))
    }
}
