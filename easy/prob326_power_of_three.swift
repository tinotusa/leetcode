import Foundation
// 326. Power of Three

// Given an integer n, return true if it is a power of three. Otherwise, return false.

// An integer n is a power of three, if there exists an integer x such that n == 3^x.

func isPowerOfThree(_ n: Int) -> Bool {
    if n <= 0 { return false }
    var power = 1
    while power < n {
        power *= 3
    }
    return power == n
}

print(isPowerOfThree(9))
