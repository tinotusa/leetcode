// Given the head of a sorted linked list, delete all duplicates such that each
// element appears only once. Return the linked list sorted as well.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    // solution 2
    if head == nil { return head }
    var current = head
    while current?.next != nil {
        if current?.val == current?.next?.val {
            current?.next = current?.next?.next
        }
        current = current?.next
    }
    return head
    // solution 1
    // if head == nil { return nil }
    // var current = head?.next
    // var prev = head
    // while current != nil {
    //     if current?.val != prev?.val {
    //         prev?.next = current
    //         prev = current
    //     } else {
    //         current = current?.next
    //     }
    // }
    // prev?.next = current
    // return head
}

func printList(_ list: ListNode?) {
    print("[", terminator: "")
    var current = list
    while current != nil {
        print("\(current!.val), ", terminator: "")
        current = current?.next
    }
    print("]", terminator: "")
}

let list: ListNode? = ListNode(1)
list?.next = ListNode(1)
list?.next?.next = ListNode(1)
list?.next?.next?.next = ListNode(1)

let newList = deleteDuplicates(list)
printList(newList)