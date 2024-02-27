//
//  DeleteMiddle.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/27/24.
//

import Foundation

/*
 You are given the head of a linked list. Delete the middle node, and return the head of the modified linked list.

 The middle node of a linked list of size n is the ⌊n / 2⌋th node from the start using 0-based indexing, where ⌊x⌋ denotes the largest integer less than or equal to x.

 For n = 1, 2, 3, 4, and 5, the middle nodes are 0, 1, 1, 2, and 2, respectively.
 
 (see tests)
 */

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
    
    static func deleteMiddle(_ head: ListNode?) -> ListNode? {
        if let head = head, head.next == nil {
            return head
        }
        
        var prev: ListNode? = nil
        var slow = head
        var fast = head
        
        while fast?.next != nil && fast?.next?.next != nil {
            prev = slow
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        if fast?.next != nil {
            prev = slow
            slow = slow?.next
        }
        
        prev?.next = slow?.next
        
        return slow
    }
}

