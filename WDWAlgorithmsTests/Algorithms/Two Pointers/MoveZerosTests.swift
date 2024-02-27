//
//  MoveZerosTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/27/24.
//

@testable import WDWAlgorithms
import XCTest

final class MoveZerosTests: XCTestCase {
    func testMoveZeroes() {
        var input = [0,1,0,3,12]
        MoveZeroes.moveZeroes(&input)
        XCTAssertEqual(input, [1,3,12,0,0])
        
        input = [0]
        MoveZeroes.moveZeroes(&input)
        XCTAssertEqual(input, [0])
    }
    
    func testMoveZeroesOptimal() {
        var input = [0,1,0,3,12]
        MoveZeroes.moveZeroesOptimal(&input)
        XCTAssertEqual(input, [1,3,12,0,0])
        
        input = [0]
        MoveZeroes.moveZeroesOptimal(&input)
        XCTAssertEqual(input, [0])
        
        input = [1,0,2,0,3,0]
        MoveZeroes.moveZeroesOptimal(&input)
        XCTAssertEqual(input, [1,2,3,0,0,0])
    }
}
