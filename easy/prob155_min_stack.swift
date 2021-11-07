// 155. Min Stack

// Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

class MinStack {
    private var values: [Int]
    private var min: Int
    init() {
        values = [Int]()
        min = Int.max
    }
    
    func push(_ val: Int) {
        values.append(val)
        if val < min {
            min = val
        }
    }
    
    func pop() {
        let lastValue = values.last!
        values.removeLast()
        if lastValue == min {
            min = Int.max
            for num in values {
                if num < min {
                    min = num
                }
            }
        }
        
    }
    
    func top() -> Int {
        values.last!
    }
    
    func getMin() -> Int {
        min
    }
}