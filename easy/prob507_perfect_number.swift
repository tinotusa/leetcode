// 507. Perfect Number

// A perfect number is a positive integer that is equal to the sum of its positive
// divisors, excluding the number itself. A divisor of an integer x is an integer
// that can divide x evenly.

// Given an integer n, return true if n is a perfect number, otherwise return false.

import Foundation

func checkPerfectNumber(_ num: Int) -> Bool {
    if num == 1 { return false }
    var sum = 0
    for i in 2 ... Int(sqrt(Double(num))) + 1 {
        if num % i == 0 {
            sum += i + num / i
        }
    }
    return sum + 1 == num
}

print(checkPerfectNumber(2))