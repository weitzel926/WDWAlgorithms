//
//  IntegerToRoman.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/29/24.
//

/*
 Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

 Symbol       Value
 I             1
 V             5
 X             10
 L             50
 C             100
 D             500
 M             1000
 For example, 2 is written as II in Roman numeral, just two one's added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

 Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

 I can be placed before V (5) and X (10) to make 4 and 9.
 X can be placed before L (50) and C (100) to make 40 and 90.
 C can be placed before D (500) and M (1000) to make 400 and 900.
 Given an integer, convert it to a roman numeral.
 */

import Foundation

class IntegerToRoman {
    
    /*
     Theory:
     
     To determine the number of one value value we use integer division.
     EX: 3000 / 1000 = 3 ---> We need three M characters.
     
     The trick is the special situations like IV.  We can do these the same
     way.  For example, for IV, we divide by 4.
     
     After we do this calculation, we update the value we are working on
     using the modulus operator.  If value is not zero, we go through again.
     
     NOTE: We could make this code a lot nicer.  I left it chunky as a reference.
     */
    func intToRoman(_ num: Int) -> String {
        var value = num
        var result = ""
        
        while value > 0 {
            var (newValue, block) = checkPlace(value: value, place: 1000)
            result += block
            value = newValue
            
            (newValue, block) = checkPlace(value: value, place: 900)
            result += block
            value = newValue
            
            (newValue, block) = checkPlace(value: value, place: 500)
            result += block
            value = newValue
            
            (newValue, block) = checkPlace(value: value, place: 400)
            result += block
            value = newValue
            
            (newValue, block) = checkPlace(value: value, place: 100)
            result += block
            value = newValue
            
            (newValue, block) = checkPlace(value: value, place: 90)
            result += block
            value = newValue
            
            (newValue, block) = checkPlace(value: value, place: 50)
            result += block
            value = newValue
            
            (newValue, block) = checkPlace(value: value, place: 40)
            result += block
            value = newValue
            
            (newValue, block) = checkPlace(value: value, place: 10)
            result += block
            value = newValue
            
            (newValue, block) = checkPlace(value: value, place: 9)
            result += block
            value = newValue
            
            (newValue, block) = checkPlace(value: value, place: 5)
            result += block
            value = newValue
            
            (newValue, block) = checkPlace(value: value, place: 4)
            result += block
            value = newValue
            
            (newValue, block) = checkPlace(value: value, place: 1)
            result += block
            value = newValue
        }
        return result
    }
    
    private func checkPlace(value: Int, place: Int) -> (Int, String) {
        var resultBlock = ""
        var resultValue = value
        
        if value / place > 0 {
            var block = ""
            for _ in 0..<(value/place) {
                block += stringForPlace(place: place)
            }
            resultBlock += block
            resultValue = value % place
        }
        
        return (resultValue, resultBlock)
    }
    
    private func stringForPlace(place: Int) -> String {
        switch place {
        case 1000:
            return "M"
        case 900:
            return "CM"
        case 500:
            return "D"
        case 400:
            return "CD"
        case 100:
            return "C"
        case 90:
            return "XC"
        case 50:
            return "L"
        case 40:
            return "XL"
        case 10:
            return "X"
        case 9:
            return "IX"
        case 5:
            return "V"
        case 4:
            return "IV"
        case 1:
            return "I"
        default:
            return ""
        }
    }
}
