//
//  ChunkTests.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/14/24.
//

@testable import WDWAlgorithms
import XCTest

final class ChunkTests: XCTestCase {
    func testChunk() {
        XCTAssertEqual(Chunk.chunk([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], chunkSize: 2), [[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]])
        XCTAssertEqual(Chunk.chunk([1, 2, 3], chunkSize: 1), [[1], [2], [3]])
        XCTAssertEqual(Chunk.chunk([1, 2, 3, 4, 5], chunkSize: 3), [[1, 2, 3], [4, 5]])
        XCTAssertEqual(Chunk.chunk([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], chunkSize: 5), [[1, 2, 3, 4, 5], [6, 7, 8, 9, 10], [11, 12, 13]])
    }
}
