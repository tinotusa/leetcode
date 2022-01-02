// 501. Find Mode in Binary Search Tree

// Given the root of a binary search tree (BST) with duplicates, return all the
// mode(s) (i.e., the most frequently occurred element) in it.

// If the tree has more than one mode, return them in any order.

// Assume a BST is defined as follows:

// The left subtree of a node contains only nodes with keys less than or equal
// to the node's key. The right subtree of a node contains only nodes with keys
// greater than or equal to the node's key. Both the left and right subtrees
// must also be binary search trees.

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

func findMode(_ root: TreeNode?) -> [Int] {
    let valueCounts = getCounts(root)
    var results = [Int]()
    var max = valueCounts.values.first!

    for value in valueCounts.values {
        if value > max {
            max = value
        }
    }

    for (key, value) in valueCounts {
        if value == max {
            results.append(key)
        }
    }

    return results
}

func getCounts(_ root: TreeNode?) -> [Int: Int] {
    if root == nil { return [:]}

    var valueCounts = [Int: Int]()
    var stack = [TreeNode?]()
    stack.append(root)

    while !stack.isEmpty {
        let node = stack.removeLast()
        if node?.left != nil { stack.append(node?.left) }
        if node?.right != nil { stack.append(node?.right) }
        valueCounts[node!.val, default: 0] += 1
    }

    return valueCounts
}

var tree: TreeNode? = TreeNode(0)

print(findMode(tree))