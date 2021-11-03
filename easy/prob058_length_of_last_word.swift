// Given a string s consisting of some words separated by some number of spaces,
// return the length of the last word in the string.

// A word is a maximal substring consisting of non-space characters only.
import Foundation

func lengthOfLastWord(_ text: String) -> Int {
    var inWord = false
    var count = 0
    for i in stride(from: text.count - 1, through: 0, by: -1) {
        let index = text.index(text.startIndex, offsetBy: i)
        if text[index] == " " {
            inWord = false
            if count > 0 {
                return count
            }
            continue
        }
        inWord = true
        if !inWord {
            return count
        }
        count += 1
    }
    return count
    // solution 1
    // return text.split(separator: " ").last!.count
}

let text = "fly me   to   the moon  "
print(lengthOfLastWord(text))