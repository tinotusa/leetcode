// 145. Binary Tree Postorder Traversal

// Given the root of a binary tree, return the postorder traversal of its nodes' values.

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

func postorderTraversal(_ root: TreeNode?) -> [Int] {
    // solution 2
    if root == nil { return  [] }
    var stack = [root]
    var results = [Int]()
    while !stack.isEmpty {
        let node = stack.removeLast()
        if node != nil {
            results.insert(node!.val, at: 0)
            stack.append(node?.left)
            stack.append(node?.right)
        }
    }
    return results
    // solution 1
    // func postorderTraversalHelper(_ root: TreeNode?, _ results: inout [Int]) {
    //     if root == nil { return }
    //     postorderTraversalHelper(root?.left, &results)
    //     postorderTraversalHelper(root?.right, &results)
    //     results.append(root!.val)
    // }

    // var results = [Int]()
    // postorderTraversalHelper(root, &results)
    // return results
}

let t: TreeNode? = TreeNode(1)
t?.right = TreeNode(2)
t?.right?.left = TreeNode(3)

print(postorderTraversal(t))