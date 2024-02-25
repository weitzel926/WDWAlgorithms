//
//  MergeStringsTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/21/24.
//
@testable import WDWAlgorithms
import XCTest


final class MergeStringsTests: XCTestCase {
    func testMergeStrings() {
        XCTAssertEqual(MergeStrings.mergeStrings("abc", "pqr"), "apbqcr")
        XCTAssertEqual(MergeStrings.mergeStrings("ab", "pqrs"), "apbqrs")
        XCTAssertEqual(MergeStrings.mergeStrings("abcd", "pq"), "apbqcd")
    }
}
