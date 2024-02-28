//
//  MaxNumberKSumPairsTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/28/24.
//

@testable import WDWAlgorithms
import XCTest

final class MaxNumberKSumPairsTests: XCTestCase {
    func testMaxNumberKSumPairs() {
        XCTAssertEqual(MaxNumberKSumPairs.maxOperations([1,2,3,4], 5), 2)
        XCTAssertEqual(MaxNumberKSumPairs.maxOperations([3,1,3,4,3], 6), 1)
    }
}
