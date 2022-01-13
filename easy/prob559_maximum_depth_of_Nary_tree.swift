// 559. Maximum Depth of N-ary Tree

// Given a n-ary tree, find its maximum depth.

// The maximum depth is the number of nodes along the longest path from the root
// node down to the farthest leaf node.

// Nary-Tree input serialization is represented in their level order traversal,
// each group of children is separated by the null value (See examples).
public class Node {
    public var val: Int
    public var children: [Node]
    public init(_ val: Int) {
        self.val = val
        self.children = []
    }
}

func maxDepth(_ root: Node?) -> Int {
    if root == nil { return 0 }
    var queue = [Node?]()
    queue.append(root)
    var count = 0

    while !queue.isEmpty {
        let size = queue.count
        for _ in 0 ..< size {
            let current = queue.removeFirst()
            for child in current!.children {
                queue.append(child)
            }
        }
        count += 1
    }
    return count
}

