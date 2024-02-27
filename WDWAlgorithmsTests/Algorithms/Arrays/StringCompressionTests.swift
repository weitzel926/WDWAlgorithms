//
//  StringCompressionTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/26/24.
//

@testable import WDWAlgorithms
import XCTest

final class StringCompressionTests: XCTestCase {
    func testStringCompression() {
        var chars: Array<Character> = ["a","a","b","b","c","c","c"]
        XCTAssertEqual(StringCompression.compress(&chars), 6)
        XCTAssertEqual(chars, ["a", "2", "b", "2", "c", "3"])
        
        chars = ["a"]
        XCTAssertEqual(StringCompression.compress(&chars), 1)
        XCTAssertEqual(chars, ["a"])
        
        chars = ["a","b","b","b","b","b","b","b","b","b","b","b","b"]
        XCTAssertEqual(StringCompression.compress(&chars), 4)
        XCTAssertEqual(chars, ["a", "b", "1", "2"])
    }
}
