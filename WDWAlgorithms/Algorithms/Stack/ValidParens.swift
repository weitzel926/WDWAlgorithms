//
//  ValidParens.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 3/1/24.
//

import Foundation

class ValidParens {
    static func isValid(_ s: String) -> Bool {
        let array = Array(s)
        
        var queue: [Character] = []
        
        for char in array {
            if char == "(" || char == "[" || char == "{" {
                queue.append(char)
            }
            
            if char == ")" {
                if queue.isEmpty || queue.removeLast() != "(" {
                    return false
                }
            }
            
            if char == "}" {
                if queue.isEmpty || queue.removeLast() != "{" {
                    return false
                }
            }
            
            if char == "]" {
                if queue.isEmpty || queue.removeLast() != "[" {
                    return false
                }
            }
        }
        
        return queue.isEmpty
    }
}
