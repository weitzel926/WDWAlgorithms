//
//  ReverseVowelsTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/25/24.
//

@testable import WDWAlgorithms
import XCTest

final class ReverseVowelsTests: XCTestCase {
    func testReverseVowels() {
        XCTAssertEqual(ReverseVowels.reverseVowels("hello"), "holle")
        XCTAssertEqual(ReverseVowels.reverseVowels("leetcode"), "leotcede")
        XCTAssertEqual(ReverseVowels.reverseVowels("hello wOrld"), "hOllo werld")
    }
}
