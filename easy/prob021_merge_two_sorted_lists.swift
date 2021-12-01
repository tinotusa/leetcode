// Merge two sorted linked lists and return it as a sorted list.
// The list should be made by splicing together the nodes of the first two lists.

 public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    // iterative
    var dummy: ListNode? = ListNode(0)
    var current = dummy
    var list1 = list1
    var list2 = list2
    while list1 != nil && list2 != nil {
        if list1!.val < list2!.val {
            current?.next = list1
            list1 = list1?.next
        } else {
            current?.next = list2
            list2 = list2?.next
        }
        current = current?.next
    }
    if list1 != nil {
        current?.next = list1
    } else  {
        current?.next = list2
    }
    return dummy?.next
    // recursive
    // guard let list1 = list1 else { return list2 }
    // guard let list2 = list2 else { return list1 }

    // guard list1.val < list2.val else {
    //     list2.next = mergeTwoLists(list1, list2.next) 
    //     return list2
    // }

    // list1.next = mergeTwoLists(list1.next, list2)
    // return list1
}


func printList(_ list: ListNode?) {
    var head = list
    var text = "["
    while head != nil {
        if head?.next != nil {
            text += "\(head!.val), "
        } else {
            text += "\(head!.val)"
        }
        head = head?.next
    }
    print(text + "]")
}

var l1 = ListNode(1)
l1.next = ListNode(2)
l1.next?.next = ListNode(4)

var l2 = ListNode(1)
l2.next = ListNode(3)
l2.next?.next = ListNode(4)

printList(mergeTwoLists(l1, nil))
printList(mergeTwoLists(nil, l2))
printList(mergeTwoLists(nil, nil))
printList(mergeTwoLists(l1, l2))