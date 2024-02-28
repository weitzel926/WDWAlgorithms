//
//  MaxVowelsInSubstringOfLengthTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/28/24.
//

@testable import WDWAlgorithms
import XCTest

final class MaxVowelsInSubstringOfLengthTests: XCTestCase {
    func testMaxVowelsInSubstring() {
        XCTAssertEqual(MaxVowelsInSubstringOfLength.maxVowels("abciiidef", 3), 3)
        XCTAssertEqual(MaxVowelsInSubstringOfLength.maxVowels("aeiou", 2), 2)
        XCTAssertEqual(MaxVowelsInSubstringOfLength.maxVowels("leetcode", 3), 2)
    }
}
