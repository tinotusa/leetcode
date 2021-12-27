// 404. Sum of Left Leaves

// Given the root of a binary tree, return the sum of all left leaves.
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


func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
    // solution 2
    var stack = [TreeNode?]()
    stack.append(root)
    var sum = 0

    while !stack.isEmpty {
        let node = stack.removeLast()
        if node?.left != nil {
            if isLeaf(node?.left) {
                sum += node!.left!.val
            } else {
                stack.append(node?.left)
            }
        }
        if node?.right != nil {
            stack.append(node?.right)
        }
    }

    return sum

    // solution 1
    // sumOfLeftLeavesHelper(root)
}

func sumOfLeftLeavesHelper(_ root: TreeNode?, isLeft: Bool = false) -> Int {
    if root == nil { return 0 }
    if isLeft && isLeaf(root) {
        return root!.val
    }
    return sumOfLeftLeavesHelper(root?.left, isLeft: true) + sumOfLeftLeavesHelper(root?.right)
}

func isLeaf(_ node: TreeNode?) -> Bool {
    if node == nil { return false }
    return node?.left == nil && node?.right == nil
}

var tree: TreeNode? = TreeNode(3)
// tree?.left = TreeNode(9)
// tree?.right = TreeNode(20)
// tree?.right?.left = TreeNode(15)
// tree?.right?.right = TreeNode(7)

print(sumOfLeftLeaves(tree))