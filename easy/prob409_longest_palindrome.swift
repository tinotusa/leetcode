// 409. Longest Palindrome

// Given a string s which consists of lowercase or uppercase letters, return the
// length of the longest palindrome that can be built with those letters.

// Letters are case sensitive, for example, "Aa" is not considered a palindrome here.

func longestPalindrome(_ s: String) -> Int {
    var charCounts = [Character: Int]()
    s.forEach { letter in
        charCounts[letter, default: 0] += 1
    }

    var count = 0
    for (_, value) in charCounts {
        if value % 2 == 0 {
            count += value
        } else {
            count += (value - 1)
        }
    }

    if count < s.count {
        return count + 1
    }
    return count
}

print(longestPalindrome("abccccdd"))