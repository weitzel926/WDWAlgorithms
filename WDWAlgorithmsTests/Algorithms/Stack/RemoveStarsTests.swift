//
//  RemoveStars.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/27/24.
//

@testable import WDWAlgorithms
import XCTest

final class RemoveStarsTests: XCTestCase {
    func testRemoveStars() {
        XCTAssertEqual(RemoveStars.removeStars("leet**cod*e"), "lecoe")
        XCTAssertEqual(RemoveStars.removeStars("erase*****"), "")
    }
}
