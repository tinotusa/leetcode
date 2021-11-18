// 338. Counting Bits

// Given an integer n, return an array ans of length n + 1 such that for each i
// (0 <= i <= n), ans[i] is the number of 1's in the binary representation of i.

func countBits(_ n: Int) -> [Int] {
    var results = [Int]()
    for i in 1 ... n {
        results.append(countBitsHelper(i))
    }
    return results
}

func countBitsHelper(_ n: Int) -> Int {
    var count = 0
    // 1
    var n = n
    while n > 0 {
        count += n & 1
        n >>= 1
    }
    return count
}

print(countBits(5))