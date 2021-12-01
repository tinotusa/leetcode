// 160. Intersection of Two Linked Lists

// Given the heads of two singly linked-lists headA and headB, return the node at
// which the two lists intersect. If the two linked lists have no intersection at all, return null.

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    // solution 2
    if headA == nil && headB == nil {
        return nil
    }

    var a = headA
    var b = headB

    while a !== b {
        a = a == nil ? headB : a?.next
        b = b == nil ? headA : b?.next
    }

    return a

    // solution 1
    // if headA == nil && headB == nil {
    //     return nil
    // }

    // var headACurrent = headA
    // while headACurrent != nil {
    //     var headBCurrent = headB
    //     while headBCurrent != nil {
    //         if headBCurrent === headACurrent {
    //             return headBCurrent
    //         }
    //         headBCurrent = headBCurrent?.next
    //     }
    //     headACurrent = headACurrent?.next
    // }

    // return nil
}

let rest: ListNode? = ListNode(4)
rest?.next = ListNode(5)
rest?.next?.next = ListNode(6)

let list1: ListNode? = ListNode(1)
list1?.next = ListNode(2)
list1?.next?.next = rest

let list2: ListNode? = ListNode(0)
list2?.next = ListNode(1)
list2?.next?.next = ListNode(2)
list2?.next?.next?.next = rest


if let intersectingNode = getIntersectionNode(list1, list2) {
    print(intersectingNode.val)
} else {
    print("no intersecting node")
}