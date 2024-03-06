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
        
        var stack: [Character] = []
        
        for char in array {
            if char == "(" || char == "[" || char == "{" {
                stack.append(char)
            }
            
            if char == ")" {
                if stack.isEmpty || stack.removeLast() != "(" {
                    return false
                }
            }
            
            if char == "}" {
                if stack.isEmpty || stack.removeLast() != "{" {
                    return false
                }
            }
            
            if char == "]" {
                if stack.isEmpty || stack.removeLast() != "[" {
                    return false
                }
            }
        }
        
        return stack.isEmpty
    }
}
