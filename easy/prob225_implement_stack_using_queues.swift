class MyStack {
    // 1, 2, 3
    // [3, 2, 1]
    private var queue = [Int]()

    init() {
        
    }
    
    func push(_ x: Int) {
        queue.insert(x, at: 0)
    }
    
    func pop() -> Int {
        queue.removeFirst()
    }
    
    func top() -> Int {
        queue.first!
    }
    
    func empty() -> Bool {
        queue.isEmpty
    }
}