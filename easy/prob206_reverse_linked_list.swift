// 206. Reverse Linked List

// Given the head of a singly linked list, reverse the list, and return the reversed list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func reverseList(_ head: ListNode?) -> ListNode? {
    reverseListHelper(head, nil)
    // if head == nil { return head }
    // var newHead: ListNode? = nil
    // var head = head

    // while head != nil {
    //     let next = head?.next
    //     head?.next = newHead
    //     newHead = head
    //     head = next
    // }

    // return newHead
}

func reverseListHelper(_ head: ListNode?, _ newHead: ListNode?) -> ListNode? {
    if head == nil { return newHead }
    let next = head?.next
    head?.next = newHead
    return reverseListHelper(next, head)
}

var list: ListNode? = ListNode(1)
list?.next = ListNode(2)
list?.next?.next = ListNode(3)
list?.next?.next?.next = ListNode(4)

list = reverseList(list)

print(list?.next?.val)
print(list?.next?.next?.val)
print(list?.next?.next?.next?.val)

