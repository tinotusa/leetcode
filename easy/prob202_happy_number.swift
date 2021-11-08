// 202. Happy Number

// Write an algorithm to determine if a number n is happy.

// A happy number is a number defined by the following process:

// Starting with any positive integer, replace the number by the sum of the
// squares of its digits.
// Repeat the process until the number equals 1 (where it will stay), or it loops
// endlessly in a cycle which does not include 1.
// Those numbers for which this process ends in 1 are happy.
// Return true if n is a happy number, and false if not.

func isHappy(_ n: Int) -> Bool {
    if n <= 0 { return false }
    var n = n
    var seen = [Int: Bool]()
    while n != 1 {
        let sum = squareDigits(n)
        if seen[sum, default: false] {
            return false
        }
        n = sum
        seen[sum] = true
    }
    return true
}

func squareDigits(_ n: Int) -> Int {
    var n = n
    var sum = 0
    while n > 0 {
        let lastDigit = n % 10
        sum += lastDigit * lastDigit
        n /= 10
    }
    return sum
}

print(isHappy(19))