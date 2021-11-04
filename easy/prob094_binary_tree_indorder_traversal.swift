// Given the root of a binary tree, return the inorder traversal of its nodes' values.
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

func inorderTraversal(_ root: TreeNode?) -> [Int] {
    // solution 2
    var values = [TreeNode?]()
    var inorderArray = [Int]()
    var current = root

    while !values.isEmpty || current != nil {
        if current != nil {
            values.append(current)
            current = current?.left
        } else {
            let top = values.removeLast()
            inorderArray.append(top!.val)
            current = top?.right
        }
    }
    return inorderArray
    // solution 1
    // var arr = [Int]()
    // helper(root, &arr)
    // return arr
}

func helper(_ root: TreeNode?, _ arr: inout [Int]) {
    if root == nil {
        return
    }
    if root?.left != nil {
        helper(root?.left, &arr)
    }
    arr.append(root!.val)
    if root?.right != nil {
        helper(root?.right, &arr)
    }
}

let t: TreeNode? = TreeNode(1)
t?.right = TreeNode(2)
t?.right?.left = TreeNode(3)

print(inorderTraversal(t))