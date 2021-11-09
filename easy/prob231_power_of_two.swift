func isPowerOfTwo(_ n: Int) -> Bool {
    // solution 2
    if n <= 2 { return false }
    return n & (n - 1) == 0

    // solution 1
    // var count = 1
    // while count < n {
    //     count <<= 1
    // }
    // return count == n
}

print(isPowerOfTwo(16))