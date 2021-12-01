// 104. Maximum Depth of Binary Tree
// Given the root of a binary tree, return its maximum depth.

// A binary tree's maximum depth is the number of nodes along the longest path
// from the root node down to the farthest leaf node.

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

func maxDepth(_ root: TreeNode?) -> Int {
    // solution 2
    if root == nil { return 0 }
    var stack = [root]
    var values = [1]
    var max = 0
    while !stack.isEmpty {
        let current = stack.removeLast()
        let temp = values.removeLast()
        max = max > temp ? max : temp
        if current?.left != nil {
            stack.append(current?.left)
            values.append(temp + 1)
        }
        if current?.right != nil {
            values.append(temp + 1)
            stack.append(current?.right)
        }
    }

    // return max
    // solution 1
    // if root == nil { return 0 }
    // let left = maxDepth(root?.left) + 1
    // let right = maxDepth(root?.right) + 1
    // return left > right ? left : right
}

let t: TreeNode? = TreeNode(3)
t?.left = TreeNode(9)

t?.right = TreeNode(20)
t?.right?.left = TreeNode(15)
t?.right?.right = TreeNode(7)

print(maxDepth(t))