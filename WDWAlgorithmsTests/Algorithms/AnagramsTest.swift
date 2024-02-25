//
//  AnagramsTest.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/15/24.
//

@testable import WDWAlgorithms
import XCTest

final class AnagramsTest: XCTestCase {

    func testAnagrams() {
        XCTAssertTrue(Anagrams.anagrams("hello", "llohe"))
        XCTAssertTrue(Anagrams.anagrams("Whoa! Hi!", "Hi! Whoa!"))
        XCTAssertFalse(Anagrams.anagrams("One One", "Two two two"))
        XCTAssertFalse(Anagrams.anagrams("One one", "One one c"))
        XCTAssertFalse(Anagrams.anagrams("A tree, a life, a bench", "A tree, a fence, a yard"))
    }
}
