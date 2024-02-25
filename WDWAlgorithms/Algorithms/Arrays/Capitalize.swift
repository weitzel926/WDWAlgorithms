//
//  Capitalize.swift
//  WDWAlgorithmsTests
//
//  Created by Wade Weitzel on 2/15/24.
//

import Foundation

class Capitalize {
    static func capitalize(_ string: String) -> String {
        let array: [Character] = Array(string)
        var result: [Character] = []
        
        // Need to cast here because uppercased returns String
        // Also note, you can't reference result[0] here because it is empty.  Use append instead
        result.append(Character(array[0].uppercased()))
        
        for index in 1..<array.count {
            if array[index-1] == " " {
                result.append(Character(array[index].uppercased()))
            } else {
                result.append(array[index])
            }
        }
        
        return String(result)
    }
}
