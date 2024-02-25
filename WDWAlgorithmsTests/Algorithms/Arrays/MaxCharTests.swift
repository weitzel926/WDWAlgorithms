//
//  MaxCharTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/14/24.
//

@testable import WDWAlgorithms
import XCTest

final class MaxCharTests: XCTestCase {
    func testMaxChar() {
        for _ in 0..<100 {
            XCTAssertNil(MaxChar.maxChar(""))
            XCTAssertEqual(MaxChar.maxChar("abcdefghijklmnaaaaa"), "a")
            XCTAssertEqual(MaxChar.maxChar("ab1c1d1e1f1g1"), "1")
        }
        
    }
}
