// 111. Minimum Depth of Binary Tree
// Given a binary tree, find its minimum depth.

// The minimum depth is the number of nodes along the shortest path from the
// root node down to the nearest leaf node.

// Note: A leaf is a node with no children.
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

func isLeaf(_ root: TreeNode?) -> Bool {
    if root == nil {
        return false
    }
    return root?.left == nil && root?.right == nil
}

// Breadth first search (BFS)
// search each node level by level
// the first leaf node found on a level is the result
func minDepth(_ root: TreeNode?) -> Int {
    if root == nil { return 0 }

    var depthCount = 0
    var queue = [TreeNode?]()
    queue.append(root)

    while !queue.isEmpty {
        depthCount += 1
        for node in queue {
            if node?.left != nil {
                queue.append(node?.left)
            }
            if node?.right != nil {
                queue.append(node?.right)
            }
            if isLeaf(node) {
                return depthCount
            }
            queue.removeFirst()
        }
    }

    return -1 // this shouldn't happen
}

let tree: TreeNode? = TreeNode(3)
tree?.left = TreeNode(9)
tree?.right = TreeNode(20)
tree?.right?.left = TreeNode(15)
tree?.right?.right = TreeNode(7)

print(minDepth(tree))