//
//  ValidParensTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 3/1/24.
//

@testable import WDWAlgorithms
import XCTest

final class ValidParensTests: XCTestCase {
    func testValidParents() {
        XCTAssertTrue(ValidParens.isValid("()"))
        XCTAssertTrue(ValidParens.isValid("()[]{}"))
        XCTAssertFalse(ValidParens.isValid("]"))
    }
}
