//
//  GreatestDivisorOfStringsTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/21/24.
//

@testable import WDWAlgorithms
import XCTest

final class GreatestDivisorOfStringsTests: XCTestCase {
    func testGcdOfStrings() {
        XCTAssertEqual(GreatestCommonDivisorOfStrings.gcdOfStrings("ABCABC", "ABC"), "ABC")
        XCTAssertEqual(GreatestCommonDivisorOfStrings.gcdOfStrings("ABABAB", "ABAB"), "AB")
        XCTAssertEqual(GreatestCommonDivisorOfStrings.gcdOfStrings("LEET", "CODE"), "")
    }
    
    func testGcdOfStringsFancy() {
        XCTAssertEqual(GreatestCommonDivisorOfStrings.gcdOfStrings("ABCABC", "ABC"), "ABC")
        XCTAssertEqual(GreatestCommonDivisorOfStrings.gcdOfStrings("ABABAB", "ABAB"), "AB")
        XCTAssertEqual(GreatestCommonDivisorOfStrings.gcdOfStrings("LEET", "CODE"), "")
    }
}
