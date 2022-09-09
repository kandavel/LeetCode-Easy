/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        var p1: ListNode? = headA
        var p2: ListNode? = headB
        
        while p1 !== p2 {
          // the nil must be traversed
            if p1 == nil {
                p1 = headB
            } else {
                p1 = p1?.next
            }
            
            if p2 == nil {
                p2 = headA
            } else {
                p2 = p2?.next
            }
        }
        
        return p1
    }
}