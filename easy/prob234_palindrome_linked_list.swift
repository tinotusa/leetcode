public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func getMid(_ head: ListNode?) -> ListNode? {
    var slow = head
    var fast = head
    // get mid
    while fast != nil && slow != nil {
        fast = fast?.next?.next
        slow = slow?.next
    }
    return slow
}

func reverseList(_ list: ListNode?) -> ListNode? {
    var prev: ListNode? = nil
    var next: ListNode? = nil
    var current = list
    while current != nil {
        next = current?.next
        current?.next = prev
        prev = current
        current = next
    }
    return prev
}

func compare(_ list1: ListNode?, _ list2: ListNode?) -> Bool {
    var list1 = list1
    var list2 = list2
    while list1 != nil && list2 != nil {
        if list1?.val != list2?.val {
            return false
        }
        list1 = list1?.next
        list2 = list2?.next
    }
    return true
}

func printList(_ list: ListNode?) {
    var list = list
    while list != nil {
        print("\(list!.val)->", terminator: "")
        list = list?.next
    }
    print()
}

func isPalindrome(_ head: ListNode?) -> Bool {
    // solution 2
    let mid = getMid(head)
    printList(mid)
    let reverse = reverseList(mid)
    printList(reverse)
    return compare(head, reverse)

    // solution 1
    // if head == nil { return false }
    // var arr = [Int]()
    // var current = head
    // while current != nil {
    //     arr.append(current!.val)
    //     current = current?.next
    // }
    // var start = 0
    // var end = arr.count - 1
    // while start < end {
    //     if arr[start] != arr[end] {
    //         return false
    //     }
    //     start += 1
    //     end -= 1
    // }
    // return true
}

var list: ListNode? = ListNode(1)
list?.next = ListNode(2)
list?.next?.next = ListNode(2)
list?.next?.next?.next = ListNode(1)

print(isPalindrome(list))
