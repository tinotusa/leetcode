// 263. Ugly Number

// An ugly number is a positive integer whose prime factors are limited to 2, 3, and 5.

// Given an integer n, return true if n is an ugly number.

func isUgly(_ n: Int) -> Bool {
    if n <= 0 { return false }
    let validFactors = [2, 3, 5]
    var current = 0
    var n = n
    while n > 1 {
        if n % validFactors[current] != 0 {
            current += 1
            if current > validFactors.count - 1 {
                return false
            }
        } else {
            n /= validFactors[current]
        }
    }
    return true
}

print(isUgly(5))