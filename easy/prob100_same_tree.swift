// Given the roots of two binary trees p and q, write a function to check if
// they are the same or not.

// Two binary trees are considered the same if they are structurally identical,
// and the nodes have the same value.

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    // solution 2
    var pStack = [TreeNode?]()
    var qStack = [TreeNode?]()

    if p != nil { pStack.append(p) }
    if q != nil { qStack.append(q) }

    while !pStack.isEmpty && !qStack.isEmpty {
        let currentP = pStack.removeLast()
        let currentQ = qStack.removeLast()
        if currentP!.val != currentQ!.val { return false }

        if currentP?.right != nil { pStack.append(currentP?.right) }
        if currentQ?.right != nil { qStack.append(currentQ?.right) }
        if qStack.count != pStack.count { return false }

        if currentP?.left != nil { pStack.append(currentP?.left) }
        if currentQ?.left != nil { qStack.append(currentQ?.left) }
        if qStack.count != pStack.count { return false }
    }

    return pStack.count == qStack.count

    // solution 1
    // if p == nil && q == nil {
    //     return true
    // }
    // if p == nil || q == nil {
    //     return false
    // }
    // if p!.val != q!.val {
    //     return false
    // }
    // return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
}

let t: TreeNode? = TreeNode(1)
t?.left = TreeNode(2)
t?.right = TreeNode(1)

let t2: TreeNode? = TreeNode(1)
t2?.left = TreeNode(1)
t2?.right = TreeNode(2)

print(isSameTree(t, t2))