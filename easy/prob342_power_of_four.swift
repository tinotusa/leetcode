// 342. Power of Four

// Given an integer n, return true if it is a power of four. Otherwise, return false.

// An integer n is a power of four, if there exists an integer x such that n == 4^x.

func isPowerOfFour(_ n: Int) -> Bool {
    var power = 1
    while power < n {
        power *= 4
    }
    return power == n
}

print(isPowerOfFour(16))