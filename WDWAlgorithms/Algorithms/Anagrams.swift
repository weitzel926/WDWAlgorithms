//
//  Anagrams.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/15/24.
//

import Foundation

// --- Directions
// Check to see if two provided strings are anagrams of eachother.
// One string is an anagram of another if it uses the same characters
// in the same quantity. Only consider characters, not spaces
// or punctuation.  Consider capital letters to be the same as lower case
// --- Examples
//   anagrams('rail safety', 'fairy tales') --> True
//   anagrams('RAIL! SAFETY!', 'fairy tales') --> True
//   anagrams('Hi there', 'Bye there') --> False

class Anagrams {
    static func anagrams(_ stringA: String, _ stringB: String) -> Bool {
        let letters = CharacterSet.letters
        
        let stringA = String(stringA.unicodeScalars.filter {letters.contains($0)} )
        let stringB = String(stringB.unicodeScalars.filter {letters.contains($0)} )
        
        let mapA = Anagrams.map(stringA)
        let mapB = Anagrams.map(stringB)
        
        return mapA == mapB
    }
    
    static func map(_ string: String) -> [Character : Int] {
        var result: [Character : Int] = [:]
        
        for char in string {
            result[char] = (result[char] ?? 0) + 1
        }
        
        return result
    }
}
