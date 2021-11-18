// 345. Reverse Vowels of a String

// Given a string s, reverse only all the vowels in the string and return it.

// The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both cases.

func reverseVowels(_ s: String) -> String {
    var start = 0
    var end = s.count - 1
    var s = Array(s)

    while start < end {
        while !s[start].isVowel && start < end {
            start += 1
        }
        while !s[end].isVowel && start < end { 
            end -= 1
        }
        s.swapAt(start, end)
        start += 1 
        end -= 1
    }

    return String(s)
}

extension Character {
    var isVowel: Bool {
        switch self.lowercased() {
            case "a", "e", "i", "o", "u": return true
            default: return false
        }
    }
}

print(reverseVowels("Hello"))