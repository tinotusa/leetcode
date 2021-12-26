// 257. Binary Tree Paths

// Given the root of a binary tree, return all root-to-leaf paths in any order.

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

func binaryTreePaths(_ root: TreeNode?) -> [String] {
    var results = [String]()
    binaryTreePathsHelper(root, "", &results)
    return results
}

func isLeaf(_ node: TreeNode?) -> Bool {
    if node == nil { return false }
    return node?.left == nil && node?.right == nil
}

// Depth First Search
func binaryTreePathsHelper(_ root: TreeNode?, _ text: String, _ results: inout [String]) {
    if root == nil {
        return
    }
    var text = text
    if !isLeaf(root) {
        text += "\(root!.val)->"
    }
    if isLeaf(root) {
        text += "\(root!.val)"
        results.append(text)
    }
    binaryTreePathsHelper(root?.left, text, &results)
    binaryTreePathsHelper(root?.right, text, &results)
}