import Foundation

// Given an integer x, return true if x is palindrome integer.

// An integer is a palindrome when it reads the same backward as forward.
// For example, 121 is palindrome while 123 is not.


func isPalindrome(_ num: Int) -> Bool {
    // solution 2
    var reversedValue = 0
    var numCopy = num
    while numCopy > 0 {
        let lastDigit = numCopy % 10
        reversedValue = reversedValue * 10 + lastDigit
        numCopy /= 10
    }
    return reversedValue == num
    // solution 1
    // String("\(num)".reversed()) == "\(num)"
}

print(isPalindrome(123))
print(isPalindrome(121))
print(isPalindrome(-121))