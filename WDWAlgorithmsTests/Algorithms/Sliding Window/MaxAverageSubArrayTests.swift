//
//  MaxAverageSubArray.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/27/24.
//

@testable import WDWAlgorithms
import XCTest

final class MaxAverageSubArrayTests: XCTestCase {
    func testMaxAvergaeSubArray() {
        XCTAssertEqual(MaxAverageSubArray.findMaxAverage([1,12,-5,-6,50,3], 4), 12.75, accuracy: 0.00001)
        XCTAssertEqual(MaxAverageSubArray.findMaxAverage([5], 1), 5.0, accuracy: 0.00001)
    }
}
