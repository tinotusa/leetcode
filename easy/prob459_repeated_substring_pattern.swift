// 459. Repeated Substring Pattern

// Given a string s, check if it can be constructed by taking a substring of it
// and appending multiple copies of the substring together.
import Foundation
func repeatedSubstringPattern(_ s: String) -> Bool {
    var concat = s + s
    let startIndex = concat.index(after: concat.startIndex)
    let endIndex = concat.index(before: concat.endIndex)
    concat = String(concat[startIndex ..< endIndex])

    if concat.contains(s) {
        return true
    }
    return false
}

print(repeatedSubstringPattern("abcabc"))