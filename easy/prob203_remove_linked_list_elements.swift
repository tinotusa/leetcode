// 203. Remove Linked List Elements

// Given the head of a linked list and an integer val, remove all the nodes of
// the linked list that has Node.val == val, and return the new head.

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
    if head == nil { return head }
    var prev: ListNode? = ListNode()
    prev?.next = head
    var current = prev
    
    while current?.next != nil {
        if current?.next?.val == val {
            current?.next = current?.next?.next
        } else {
            current = current?.next
        }
    }

    return prev?.next
}

var list: ListNode? = ListNode(6)
list?.next = ListNode(6)
list?.next?.next = ListNode(6)
list?.next?.next?.next = ListNode(6)

list = removeElements(list, 6)

print(list?.val)
print(list?.next?.val)
print(list?.next?.next?.val)
