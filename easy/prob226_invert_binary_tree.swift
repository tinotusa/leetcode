// 226. Invert Binary Tree

// Given the root of a binary tree, invert the tree, and return its root.

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

func invertTree(_ root: TreeNode?) -> TreeNode? {
    if root == nil {
        return root
    }

    let temp = root?.left
    root?.left = root?.right
    root?.right = temp
    
    root?.left = invertTree(root?.left)
    root?.right = invertTree(root?.right)
    
    return root
}

let tree: TreeNode? = TreeNode(2)
tree?.left = TreeNode(2)
tree?.left?.left = TreeNode(1)
tree?.left?.right = TreeNode(3)

tree?.right = TreeNode(7)
tree?.right?.left = TreeNode(6)
tree?.right?.right = TreeNode(9)

invertTree(tree)

print(tree?.left?.val)
print(tree?.left?.left?.val)
print(tree?.left?.right?.val)


print(tree?.right?.val)
print(tree?.right?.left?.val)
print(tree?.right?.right?.val)