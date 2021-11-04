// 101. Symmetric Tree
// Given the root of a binary tree, check whether it is a mirror of itself
// (i.e., symmetric around its center).

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

func isSymmetric(_ root: TreeNode?) -> Bool {
    // solution 2
    if root == nil { return false }
    var stack = [root?.left, root?.right]
    
    while !stack.isEmpty {
        let left = stack.removeLast()
        let right = stack.removeLast()
        if left == nil && right == nil { continue }
        if left == nil || right == nil { return false }
        if left?.val != right?.val { return false }
        stack.append(left?.left)
        stack.append(right?.right)
        stack.append(left?.right)
        stack.append(right?.left)
    }
    return true
    // solution 1
    // if root == nil { return false }
    // return isSymmetric(root?.left, root?.right)
}

func isSymmetric(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
    if left == nil && right == nil { return true }
    if left == nil || right == nil { return false }
    if left?.val != right?.val {
        return false
    }
    return isSymmetric(left?.right, right?.left) && isSymmetric(left?.left, right?.right)
}

let t: TreeNode? = TreeNode(1)
t?.left = TreeNode(2)
t?.left?.left = TreeNode(3)
t?.left?.right = TreeNode(4)

t?.right = TreeNode(2)
t?.right?.left = TreeNode(4)
t?.right?.right = TreeNode(3)


print(isSymmetric(t))