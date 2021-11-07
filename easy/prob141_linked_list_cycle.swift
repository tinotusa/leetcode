// 141. Linked List Cycle

// Given head, the head of a linked list, determine if the linked list has a cycle in it.

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func hasCycle(_ head: ListNode?) -> Bool {
    if head == nil { return false }
    var current = head
    var next = head

    while current != nil && next?.next?.next != nil {
        current = current?.next
        next = next?.next?.next
        if current === next { return true}
    }

    return false
}

let list: ListNode? = ListNode(3)
list?.next = ListNode(2)
list?.next?.next = ListNode(0)
list?.next?.next?.next = ListNode(4)
list?.next?.next?.next?.next = list?.next?.next

print(hasCycle(list))