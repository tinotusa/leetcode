// 242. Valid Anagram

// Given two strings s and t, return true if t is an anagram of s, and false otherwise.

func isAnagram(_ s: String, _ t: String) -> Bool {
    var sCharCount = [Character: Int]()
    var tCharCount = [Character: Int]()
    countLetters(s, &sCharCount)
    countLetters(t, &tCharCount)
    if sCharCount.count != tCharCount.count {
        return false
    }
    for (char, count) in sCharCount {
        if tCharCount[char] != count {
            return false
        }
    }
    return true
}

func countLetters(_ s: String, _ dict: inout [Character: Int]) {
    s.forEach {
        dict[$0, default: 0] += 1
    }
}

let s = "rat"
let t = "car"
print(isAnagram(s, t))