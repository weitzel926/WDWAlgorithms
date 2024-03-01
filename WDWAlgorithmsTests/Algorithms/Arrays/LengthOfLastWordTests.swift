//
//  LengthOfLastWordTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/29/24.
//

@testable import WDWAlgorithms
import XCTest

final class LengthOfLastWordTests: XCTestCase {
    func testLengthOfLastWord() {
        XCTAssertEqual(LengthOfLastWord.lengthOfLastWord("Hello World"), 5)
        XCTAssertEqual(LengthOfLastWord.lengthOfLastWord("   fly me   to   the moon  "), 4)
        XCTAssertEqual(LengthOfLastWord.lengthOfLastWord("luffy is still joyboy"), 6)
    }
}
