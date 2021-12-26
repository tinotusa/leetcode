// 112. Path Sum

// Given the root of a binary tree and an integer targetSum, return true if the
// tree has a root-to-leaf path such that adding up all the values along the
// path equals targetSum.

// A leaf is a node with no children.

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

func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
    // solution 2
    if root == nil { return false }
    if isLeaf(root) && targetSum - root!.val == 0 { return true }
    return (
        hasPathSum(root?.left, targetSum - root!.val) || 
        hasPathSum(root?.right, targetSum - root!.val)
    )
    // solution 1
    // return hasPathSumHelper(root, targetSum, currentTotal: 0)
}

func isLeaf(_ root: TreeNode?) -> Bool {
    if root == nil {
        return false
    }
    return root?.left == nil && root?.right == nil
}

// Depth First Search (DFS)
func hasPathSumHelper(_ root: TreeNode?, _ targetSum: Int, currentTotal: Int) -> Bool {
    if root == nil {
        return false
    }

    if isLeaf(root) && currentTotal + root!.val == targetSum {
        return true
    }
    
    return hasPathSumHelper(root?.left, targetSum, currentTotal: currentTotal + root!.val) ||
        hasPathSumHelper(root?.right, targetSum, currentTotal: currentTotal + root!.val)
}