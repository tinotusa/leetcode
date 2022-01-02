// 509. Fibonacci Number

// The Fibonacci numbers, commonly denoted F(n) form a sequence, called the
// Fibonacci sequence, such that each number is the sum of the two preceding
// ones, starting from 0 and 1. That is,

// F(0) = 0, F(1) = 1
// F(n) = F(n - 1) + F(n - 2), for n > 1.
// Given n, calculate F(n).

func fib(_ n: Int) -> Int {
    if n <= 1 { return n }
    var f1 = 0
    var f2 = 1
    var current = 0
    for _ in 1 ..< n {
        current = f1 + f2
        f1 = f2
        f2 = current
    }
    return current
}

for i in 0 ..< 10 {
    print(i, fib(i))
}