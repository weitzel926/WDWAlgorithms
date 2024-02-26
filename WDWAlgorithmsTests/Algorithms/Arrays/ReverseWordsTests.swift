//
//  ReverseWordsTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/26/24.
//

@testable import WDWAlgorithms
import XCTest

final class ReverseWordsTests: XCTestCase {
    func testReserveWords() {
        XCTAssertEqual(ReverseWords.reverseWords("the sky is blue"), "blue is sky the")
        XCTAssertEqual(ReverseWords.reverseWords("  the sky  is blue"), "blue is sky the")
        XCTAssertEqual(ReverseWords.reverseWords("hello world"), "world hello")
        XCTAssertEqual(ReverseWords.reverseWords("a good   example"), "example good a")
    }
}
