// 125. Valid Palindrome

// A phrase is a palindrome if, after converting all uppercase letters into
// lowercase letters and removing all non-alphanumeric characters, it reads the
// same forward and backward. Alphanumeric characters include letters and numbers.

// Given a string s, return true if it is a palindrome, or false otherwise.

import Foundation

func isPalindrome(_ s: String) -> Bool {
    let s = Array(s.lowercased())
    var start = 0
    var end = s.count - 1

    while start < end {
        while start < end && !s[start].isLetter && !s[start].isNumber {
            start += 1
        }

        while start < end && !s[end].isLetter && !s[end].isNumber {
            end -= 1
        }

        if s[start] != s[end] {
            return false
        }

        start += 1
        end -= 1
    }

    return true
}

let s = "A man, a plan, a canal: Panama"
print(isPalindrome(s))