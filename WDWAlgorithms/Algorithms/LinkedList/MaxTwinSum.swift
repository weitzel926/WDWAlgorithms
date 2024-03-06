//
//  MaxTwinSum.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 3/1/24.
//

/*
 In a linked list of size n, where n is even, the ith node (0-indexed) of the linked list is known as the twin of the (n-1-i)th node, if 0 <= i <= (n / 2) - 1.

 For example, if n = 4, then node 0 is the twin of node 3, and node 1 is the twin of node 2. These are the only nodes with twins for n = 4.
 The twin sum is defined as the sum of a node and its twin.

 Given the head of a linked list with even length, return the maximum twin sum of the linked list.
 */

import Foundation

class MaxTwinSum {

    public class ListNode {
        public var val: Int
        public var next: ListNode?
        
        public init() {
            self.val = 0;
            self.next = nil;
        }
        
        public init(_ val: Int) {
            self.val = val;
            self.next = nil;
        }
        
        public init(_ val: Int, _ next: ListNode?) {
            self.val = val;
            self.next = next;
        }
    }
    
    static func pairSum(_ head: ListNode?) -> Int {
        guard head != nil else {
            return 0
        }
        
        var max = 0
        
        var slow = head
        var fast = head
        
        var stack:[Int] = []
        
        while fast != nil {
            if let currentSlow = slow {
                stack.append(currentSlow.val)
                slow = currentSlow.next
            }
            
            fast = fast?.next?.next
        }
        
        // When fast is nil, slow is on the right side of middle.  (the
        // array must always be even, so there is no middle.  For a 4 length
        // array, one past middle is index 2 (3 items)
        
        while slow != nil {
            if let currentSlow = slow {
                let currentPairSum = stack.removeLast() + currentSlow.val
                
                if currentPairSum > max {
                    max = currentPairSum
                }
            }
            
            slow = slow?.next
        }
        
        return max
    }
}
