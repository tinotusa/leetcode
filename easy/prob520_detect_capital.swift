// 520. Detect Capital

// We define the usage of capitals in a word to be right when one of the following
// cases holds:

// All letters in this word are capitals, like "USA".
// All letters in this word are not capitals, like "leetcode".
// Only the first letter in this word is capital, like "Google".
// Given a string word, return true if the usage of capitals in it is right.

func detectCapitalUse(_ word: String) -> Bool {
    var upperCaseCount = 0
    for letter in word {
        if letter.isUppercase {
            upperCaseCount += 1
        }
    }
    switch upperCaseCount {
        case 0, word.count:
            return true
        case 1 where word.first!.isUppercase: return true
        default:
            return false
    }
}

var tests = [
    "USA": true,
    "leetcode": true,
    "FlAg": false,
    "FLAg": false,
    "fffffffF": false,
    "Leetcode": true
]

for (test, value) in tests {
    let result = detectCapitalUse(test)
    print("\(result != value ? "Failed" : "Pased") test: \(test) expected \(value) got: \(result)")
}