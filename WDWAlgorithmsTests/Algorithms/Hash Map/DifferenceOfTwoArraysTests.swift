//
//  DifferenceOfTwoArraysTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/27/24.
//

@testable import WDWAlgorithms
import XCTest

final class DifferenceOfTwoArraysTests: XCTestCase {
    func testDifferenceOfTwoArrays() {
        var result = DifferenceOfTwoArrays.findDifference([1,2,3], [2,4,6])
        
        XCTAssertTrue(result[0].contains(1))
        XCTAssertTrue(result[0].contains(3))
        
        XCTAssertTrue(result[1].contains(4))
        XCTAssertTrue(result[1].contains(6))
        
        result = DifferenceOfTwoArrays.findDifference([1,2,3,3], [1,1,2,2])
        
        XCTAssertTrue(result[0].contains(3))
        XCTAssertTrue(result[1].isEmpty)
    }
}
