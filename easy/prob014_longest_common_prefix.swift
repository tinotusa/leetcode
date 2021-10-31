// Write a function to find the longest common prefix string amongst an array of strings.
// If there is no common prefix, return an empty string "".
import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.isEmpty { return "" }

    var shortestWord = strs.first!
    for word in strs {
        if word.count < shortestWord.count {
            shortestWord = word
        }
    }

    var longestPrefix = shortestWord
    while longestPrefix.count > 0 {
        var allContain = true
        for word in strs where word != longestPrefix {
            if !word.hasPrefix(longestPrefix) {
                allContain = false
                break
            }
        }
        if !allContain {
            longestPrefix.removeLast()
        } else {
            break
        }
    }

    return longestPrefix
}

print(longestCommonPrefix(["flower","flow","flight"]))
print(longestCommonPrefix(["dog","racecar","car"]))