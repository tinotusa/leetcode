// 191. Number of 1 Bits

// Write a function that takes an unsigned integer and returns the number of '1'
// bits it has (also known as the Hamming weight).

func hammingWeight(_ n: Int) -> Int {
    var n = n
    var count = 0
    while n != 0 {
        count += n & 1
        n >>= 1
    }
    return count
}

print(hammingWeight(255))