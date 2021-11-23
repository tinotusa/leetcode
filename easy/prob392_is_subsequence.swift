// 392. Is Subsequence

// Given two strings s and t, return true if s is a subsequence of t, or false otherwise.

// A subsequence of a string is a new string that is formed from the original
// string by deleting some (can be none) of the characters without disturbing the
// relative positions of the remaining characters. (i.e., "ace" is a subsequence
// of "abcde" while "aec" is not).

func isSubsequence(_ s: String, _ t: String) -> Bool {
    if s.count > t.count {
        return false
    }
    var sIndex = 0
    for (_, letter) in t.enumerated() {
        if sIndex < s.count && letter == s[s.index(s.startIndex, offsetBy: sIndex)] {
            sIndex += 1
        }
    }
    return sIndex == s.count
}

let s = "axc"
let t = "ahbgdc"
print(isSubsequence(s, t))