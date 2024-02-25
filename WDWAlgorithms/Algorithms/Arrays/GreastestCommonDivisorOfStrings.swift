//
//  GreastestCommonDivisorOfStrings.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/21/24.
//

import Foundation

/*
Example 1:

Input: str1 = "ABCABC", str2 = "ABC"
Output: "ABC"
Example 2:

Input: str1 = "ABABAB", str2 = "ABAB"
Output: "AB"
Example 3:

Input: str1 = "LEET", str2 = "CODE"
Output: ""
 

Constraints:

1 <= str1.length, str2.length <= 1000
str1 and str2 consist of English uppercase letters.
*/


/*
 This is the brute force method.  It's O(min(m,n)⋅(m+n))
 */
class GreatestCommonDivisorOfStrings {
    static func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        let smallestCount = str1.count < str2.count ? str1.count : str2.count
        
        for count in 1...smallestCount {
            let startIndexStr1 = str1.index(str1.startIndex, offsetBy: 0)
            let endIndexStr1 = str1.index(startIndexStr1, offsetBy: count)
            
            let divisor = String(str1[startIndexStr1..<endIndexStr1])
            
            print("Divisor: \(divisor)")
            
            if GreatestCommonDivisorOfStrings.divisibleBy(str1, divisor: divisor) && GreatestCommonDivisorOfStrings.divisibleBy(str2, divisor: divisor) {
                return divisor
            }
        }
        return ""
    }
    
    static func divisibleBy(_ string: String, divisor: String) -> Bool {
        if string.count % divisor.count != 0 {
            return false
        }
        
        var current = 0
        
        while current < string.count {
            let startIndex = string.index(string.startIndex, offsetBy: current)
            let endIndex = string.index(startIndex, offsetBy: divisor.count)
            
            let section = String(string[startIndex..<endIndex])
            print("Section: \(section)")
            if divisor != section {
                return false
            }
            
            current += divisor.count
        }
        
        return true
    }
    
    
    // This is the fancy method
    static func gcdOfStringsFancy(_ str1: String, _ str2: String) -> String {
        // If a string is divisible, we should be able to cat them together in any order
        // and they are the same.  We check that first.
        if str1+str2 != str2+str1 {
            return ""
        }
        
        // else, we know there will be a value!  We just need to get the GCD of the size
        // and pull the substring.
        let gcd = GreatestCommonDivisorOfStrings.gcd(str1.count, str2.count)
        
        // Pull out a substring
        let startIndex = str1.index(str1.startIndex, offsetBy: 0)
        let endIndex = str1.index(startIndex, offsetBy: gcd)
        
        return String(str1[startIndex..<endIndex])
    }
    
    // Euclid's algorithm
    static func gcd(_ left: Int, _ right: Int) -> Int {
        if right == 0 {
            return left
        } else {
            return gcd(right, left % right)
        }
    }
}
