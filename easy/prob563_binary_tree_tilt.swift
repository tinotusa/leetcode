// 563. Binary Tree Tilt

// Given the root of a binary tree, return the sum of every tree node's tilt.

// The tilt of a tree node is the absolute difference between the sum of all left
// subtree node values and all right subtree node values. If a node does not have
// a left child, then the sum of the left subtree node values is treated as 0.
// The rule is similar if the node does not have a right child.

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

func sumTree(_ root: TreeNode?, runningTotal: inout Int) -> Int {
    if root == nil {
        return 0
    }
    if root == nil { return 0 }
    // go left
    let left = sumTree(root?.left, runningTotal: &runningTotal)
    // go right
    let right = sumTree(root?.right, runningTotal: &runningTotal)
    runningTotal += abs(left - right)
    return root!.val + left + right
}

func findTilt(_ root: TreeNode?) -> Int {
    var sum = 0
    let _ = sumTree(root, runningTotal: &sum)
    return sum
}

