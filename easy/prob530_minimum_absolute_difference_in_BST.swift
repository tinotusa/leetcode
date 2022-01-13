// 530. Minimum Absolute Difference in BST

// Given the root of a Binary Search Tree (BST), return the minimum absolute
// difference between the values of any two different nodes in the tree.
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

func getMinimumDifference(_ root: TreeNode?) -> Int {
    if root == nil { return 0 }
    var min = Int.max
    var currentValue = root!.val
    helper(root, minValue: &min, currentValue: &currentValue)
    return min
}

func helper(_ root: TreeNode?, minValue: inout Int, currentValue: inout Int) {
    if root == nil { return }
    if root?.left != nil {
        helper(root?.left, minValue: &minValue, currentValue: &currentValue)
    }
    if currentValue >= 0 {
        minValue = min(minValue, abs(root!.val - currentValue))
    }
    currentValue = root!.val
    if root?.right != nil {
        helper(root?.right, minValue: &minValue, currentValue: &currentValue)
    }
}

var tree: TreeNode? = TreeNode(4)
tree?.left = TreeNode(2)
tree?.left?.left = TreeNode(1)
tree?.left?.right = TreeNode(3)

tree?.right = TreeNode(6)
// tree?.right?.left = TreeNode(3)

print(getMinimumDifference(tree))