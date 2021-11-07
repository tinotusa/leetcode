// 144. Binary Tree Preorder traversal

// Given the root of a binary tree, return the preorder traversal of its nodes' values.
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

func preorderTraversal(_ root: TreeNode?) -> [Int] {
    // solution 2
    if root == nil { return [] }
    var result = [Int]()
    var stack = [root]
    while !stack.isEmpty {
        let node = stack.removeLast()
        if node != nil {
            result.append(node!.val)
            stack.append(node?.right)
            stack.append(node?.left)
        }
    }
    return result

    // solution 1
    // var arr = [Int]()
    // preorderTraversalHelper(root, &arr)
    // return arr
}

func preorderTraversalHelper(_ root: TreeNode?, _ arr: inout [Int]) {
    if root == nil { return }
    arr.append(root!.val)
    preorderTraversalHelper(root?.left, &arr)
    preorderTraversalHelper(root?.right, &arr)
}

let t: TreeNode? = TreeNode(1)
t?.right = TreeNode(2)
t?.right?.left = TreeNode(3)

print(preorderTraversal(t))