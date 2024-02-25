//
//  CapitalizeTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/15/24.
//
@testable import WDWAlgorithms
import XCTest

final class CapitalizeTests: XCTestCase {
    func testCapitalize() {
        XCTAssertEqual(Capitalize.capitalize("hi there, how is it going?"), "Hi There, How Is It Going?")
        XCTAssertEqual(Capitalize.capitalize("i love breakfast at bill miller bbq"), "I Love Breakfast At Bill Miller Bbq")
    }
}
