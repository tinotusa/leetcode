// 108. Convert Sorted Array to Binary Search Tree
// Given an integer array nums where the elements are sorted in ascending order,
// convert it to a height-balanced binary search tree.

// A height-balanced binary tree is a binary tree in which the depth of the two
// subtrees of every node never differs by more than one.
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

func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    if nums.isEmpty { return nil }
    let mid = nums.count / 2
    let root = TreeNode(nums[mid])
    root.left = sortedArrayToBST(Array(nums[0 ..< mid]))
    root.right = sortedArrayToBST(Array(nums[mid + 1 ..< nums.count]))
    return root
}

func printTree(_ root: TreeNode?) {
    if root == nil { return }
    printTree(root?.left)
    print("\(root!.val) ", terminator: "")
    printTree(root?.right)
}

let arr = [-10, -3, 0, 5, 9]

var t: TreeNode? = TreeNode(0)
t?.left = TreeNode(-3)
t?.right = TreeNode(9)

let bst = sortedArrayToBST(arr)
printTree(bst)