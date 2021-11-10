// 232. Implement Queue using Stacks
// Implement a first in first out (FIFO) queue using only two stacks. The
// implemented queue should support all the functions of a normal queue (push, peek, pop, and empty).

class MyQueue {
    private var stack = [Int]()

    init() {
        
    }
    
    func push(_ x: Int) {
        stack.insert(x, at: 0)
    }
    
    func pop() -> Int {
        // 1, 2, 3
        stack.removeLast()
    }
    
    func peek() -> Int {
        stack.first!
    }
    
    func empty() -> Bool {
        stack.isEmpty
    }
}