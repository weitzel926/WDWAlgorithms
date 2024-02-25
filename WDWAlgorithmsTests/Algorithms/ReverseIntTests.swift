//
//  ReverseInt.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/13/24.
//

@testable import WDWAlgorithms
import XCTest

final class ReverseIntTests: XCTestCase {
    func testReverseInt() {
        XCTAssertEqual(ReverseInt.reverseInt(15), 51)
        XCTAssertEqual(ReverseInt.reverseInt(15), 51)
        XCTAssertEqual(ReverseInt.reverseInt(981), 189)
        XCTAssertEqual(ReverseInt.reverseInt(500), 5)
        XCTAssertEqual(ReverseInt.reverseInt(-15), -51)
        XCTAssertEqual(ReverseInt.reverseInt(-90), -9)
    }
}
