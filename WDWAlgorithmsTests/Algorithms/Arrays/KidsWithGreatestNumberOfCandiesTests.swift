//
//  KidsWithGreatestNumberOfCandiesTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/25/24.
//

@testable import WDWAlgorithms
import XCTest

final class KidsWithGreatestNumberOfCandiesTests: XCTestCase {
    func testKidsWithGreatesNumberOfCandies() {
        XCTAssertEqual(KidsWithGreatestNumberOfCandies.kidsWithCandies([2,3,5,1,3], 3), [true, true, true, false, true])
        
        XCTAssertEqual(KidsWithGreatestNumberOfCandies.kidsWithCandies([4,2,1,1,2], 1), [true, false, false, false, false])
        
        XCTAssertEqual(KidsWithGreatestNumberOfCandies.kidsWithCandies([12,1,12], 10), [true, false, true])
    }
}
