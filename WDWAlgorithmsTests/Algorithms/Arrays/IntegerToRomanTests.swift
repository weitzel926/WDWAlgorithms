//
//  IntegerToRomanTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/29/24.
//



@testable import WDWAlgorithms
import XCTest

final class IntegerToRomanTests: XCTestCase {
    func testIntegerToRoman() {
        let intToRoman = IntegerToRoman()
        
        XCTAssertEqual(intToRoman.intToRoman(3), "III")
        XCTAssertEqual(intToRoman.intToRoman(58), "LVIII")
        XCTAssertEqual(intToRoman.intToRoman(1994), "MCMXCIV")
    }
}
