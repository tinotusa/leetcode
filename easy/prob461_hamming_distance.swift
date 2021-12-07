// 461. Hamming Distance

// The Hamming distance between two integers is the number of positions at which
// the corresponding bits are different.

// Given two integers x and y, return the Hamming distance between them.

func hammingDistance(_ x: Int, _ y: Int) -> Int {
    var x = x
    var y = y
    var count = 0
    while x > 0 || y > 0 {
        count += x & 1 != y & 1 ? 1 : 0
        x >>= 1
        y >>= 1
    }
    return count
}

print(hammingDistance(1, 4))