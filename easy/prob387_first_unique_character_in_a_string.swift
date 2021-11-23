import Foundation
// 387. First Unique Character in a String

// Given a string s, find the first non-repeating character in it and return its
// index. If it does not exist, return -1.

func firstUniqChar(_ s: String) -> Int {
    var letterCounts = [Character: Int]()
    s.forEach { letter in
        letterCounts[letter, default: 0] += 1
    }
    for letter in s {
        if letterCounts[letter]! == 1 {
            return s.distance(from: s.startIndex, to: s.firstIndex(of: letter)!)
        }
    }
    return -1
}

print(firstUniqChar("leetcode"))