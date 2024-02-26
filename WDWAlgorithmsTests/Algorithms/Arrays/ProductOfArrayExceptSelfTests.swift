//
//  ProductOfArrayExceptSelf.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/26/24.
//

@testable import WDWAlgorithms
import XCTest

final class ProductOfArrayExceptSelfTests: XCTestCase {
    func testProductOfArrayExceptSelf() {
        XCTAssertEqual(ProductOfArrayExceptSelf.productExceptSelf([1,2,3,4]), [24,12,8,6])
        XCTAssertEqual(ProductOfArrayExceptSelf.productExceptSelf([-1,1,0,-3,3]), [0,0,9,0,0])
    }
    
    func testProductOfArrayExceptSelfConstantSpace() {
        XCTAssertEqual(ProductOfArrayExceptSelf.productExceptSelfConstantSpace([1,2,3,4]), [24,12,8,6])
        XCTAssertEqual(ProductOfArrayExceptSelf.productExceptSelfConstantSpace([-1,1,0,-3,3]), [0,0,9,0,0])
    }
}
