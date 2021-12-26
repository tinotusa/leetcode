// 235. Lowest Common Ancestor of a Binary Search Tree

// Given a binary search tree (BST), find the lowest common ancestor (LCA) of two
// given nodes in the BST.

// According to the definition of LCA on Wikipedia: “The lowest common ancestor is
// defined between two nodes p and q as the lowest node in T that has both p and q
// as descendants (where we allow a node to be a descendant of itself).”

// Constraints:

// The number of nodes in the tree is in the range [2, 105].
// -109 <= Node.val <= 109
// All Node.val are unique.
// p != q
// p and q will exist in the BST.

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
    // according to the requirements the root is never nil
    // and that all node values are unique ( is this because its a bst?)
    // also p and q are always in the bst
    
    // solution 2 - iterative
    var root = root
    while true {
        if root!.val > p!.val && root!.val > q!.val {
            root = root?.left
        } else if root!.val < p!.val && root!.val < q!.val {
            root = root?.right
        } else {
            break
        }
    }
    return root

    // solution 1 - recursive
    // if root!.val > p!.val && root!.val > q!.val {
    //     return lowestCommonAncestor(root?.left, p, q)
    // } else if root!.val < p!.val && root!.val < q!.val {
    //     return lowestCommonAncestor(root?.right, p, q)
    // }
    // return root
}