// 110. Balanced Binary Tree

// Given a binary tree, determine if it is height-balanced.
// For this problem, a height-balanced binary tree is defined as:

// a binary tree in which the left and right subtrees of every node differ
// in height by no more than 1.

import Foundation

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

func isBalanced(_ root: TreeNode?) -> Bool {
    if root == nil { return true }
    let left = depth(root?.left)
    let right = depth(root?.right)
    return abs(left - right) <= 1 && isBalanced(root?.left) && isBalanced(root?.right)
}

func depth(_ root: TreeNode?) -> Int {
    if root == nil { return 0 }
    let left = depth(root?.left) + 1
    let right = depth(root?.right) + 1
    return left > right ? left : right
}