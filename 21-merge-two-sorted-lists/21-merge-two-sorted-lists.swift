/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var list1 = list1
        var list2 = list2
        var resultHead = ListNode()
        var finalNode = resultHead
        while (list1 != nil) || (list2 != nil) {
            if list1 != nil && list2 != nil {
                if list1!.val > list2!.val {
                   resultHead.next = ListNode(list2!.val)
                   list2 = list2?.next
               }
                else {
                   resultHead.next = ListNode(list1!.val)
                   list1 = list1?.next
                }
            }
            else if list1 != nil {
                 resultHead.next = ListNode(list1!.val)
                 list1 = list1?.next
            }
            else {
                resultHead.next = ListNode(list2!.val)
                list2 = list2?.next
            }
            resultHead = resultHead.next!
        }
        return finalNode.next
    }
}