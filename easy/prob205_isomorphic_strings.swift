// 205. Isomorphic Strings

// Given two strings s and t, determine if they are isomorphic.

// Two strings s and t are isomorphic if the characters in s can be replaced to get t.

// All occurrences of a character must be replaced with another character while
// preserving the order of characters. No two characters may map to the same
// character, but a character may map to itself.

func isIsomorphic(_ s: String, _ t: String) -> Bool {
    if s.count != t.count { return false }
    let s = Array(s)
    let t = Array(t)
    var sMap = [Character: Character]()
    var tMap = [Character: Character]()

    for i in 0 ..< s.count {
        let sLetter = s[i]
        let tLetter = t[i]
        if sMap[sLetter] == nil && tMap[tLetter] == nil {
            sMap[sLetter] = tLetter
            tMap[tLetter] = sLetter
        } else if sMap[sLetter] != tLetter || tMap[tLetter] != sLetter {
            return false
        }
    }

    return true
}

let s = "bbbaaaba"
let t = "aaabbbba"
print(isIsomorphic(s, t))