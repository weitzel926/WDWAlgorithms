//
//  ValidSudoku.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 3/5/24.
//

/*
 Determine if a 9 x 9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:

 Each row must contain the digits 1-9 without repetition.
 Each column must contain the digits 1-9 without repetition.
 Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.
 Note:

 A Sudoku board (partially filled) could be valid but is not necessarily solvable.
 Only the filled cells need to be validated according to the mentioned rules.
 */

import Foundation

class ValidSudoku {
    static func isValidSudoku(_ board: [[Character]]) -> Bool {
        // Strategy here is to track these in hashes.  Because a tuple is not
        // hashable, we can't use it as a key in hashes.  We can use an
        // array of sets for rows and columns and a table of sets for
        // boxes instead.  Sets work well for this because insert
        // fails if the value is already there.
        
        // Please note, a second way to accomplish this would be by creating
        // a hashable struct for the keys.  A set is likely more efficient.
        
        // O(n^2) with O(n) space complexity
        var rows = Array(repeating: Set<Character>(), count: 9)
        var columns = Array(repeating: Set<Character>(), count: 9)
        var boxen = Array(repeating: Array(repeating: Set<Character>(), count: 3), count: 3)
        
        for row in 0..<9 {
            for column in 0..<9 {
                let current = board[row][column]
                                
                if current != "." {
                    // The insert method returns a tuple.  We want the inserted
                    // field to tell us whether or not we were able to insert it.
                    // A Swift set is an unordered collection.  Insert will
                    // return inserted = false in the result tuple if it
                    // already exists.
                    if !boxen[row/3][column/3].insert(current).inserted ||
                       !rows[row].insert(current).inserted ||
                       !columns[column].insert(current).inserted
                         {
                        return false
                    }
                }
            }
        }
        
        return true
    }
}
