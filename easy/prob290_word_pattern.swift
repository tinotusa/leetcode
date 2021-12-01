import Foundation
// 290. Word Pattern

// Given a pattern and a string s, find if s follows the same pattern.

// Here follow means a full match, such that there is a bijection between a letter
// in pattern and a non-empty word in s. 

// Example 1:

// Input: pattern = "abba", s = "dog cat cat dog"
// Output: true

func wordPattern(_ pattern: String, _ s: String) -> Bool {
    let pattern = Array(pattern)
    let words = s.split(separator: " ")
    
    if pattern.count != words.count { return false }
    
    var patternDict = [Character: String]()
    var wordsDict = [String: Character]()

    for i in 0 ..< pattern.count {
        let letter = pattern[i]
        let word = String(words[i])

        if patternDict[letter] == nil && wordsDict[word] == nil {
            patternDict[letter] = word
            wordsDict[word] = letter
        } else if (patternDict[letter] == nil && wordsDict[word] != nil) ||
                (patternDict[letter] != nil && wordsDict[word] == nil)
        {
            return false
        }
        if letter != wordsDict[word] && word != patternDict[letter] {
            return false
        }
    }
    return true
}

let pattern = "abba"
let text = "dog cat cat cat"
print(wordPattern(pattern, text))