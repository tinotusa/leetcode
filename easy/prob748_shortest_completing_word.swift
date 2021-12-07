// 748. Shortest Completing Word
// Given a string licensePlate and an array of strings words, find the shortest
// completing word in words.

// A completing word is a word that contains all the letters in licensePlate.
// Ignore numbers and spaces in licensePlate, and treat letters as case insensitive.
// If a letter appears more than once in licensePlate, then it must appear in
// the word the same number of times or more.

// For example, if licensePlate = "aBc 12c", then it contains letters 'a', 'b'
// (ignoring case), and 'c' twice. Possible completing words are "abccdef",
// "caaacab", and "cbca".

// Return the shortest completing word in words. It is guaranteed an answer exists.
// If there are multiple shortest completing words, return the first one that occurs in words.

func shortestCompletingWord(_ licensePlate: String, _ words: [String]) -> String {
    let licensePlateLetterCount: [Character: Int] = getCounts(licensePlate)
    let words = words.sorted { $0.count < $1.count }
    var shortestWord = ""
    for word in words {
        let counts = getCounts(word)
        var found = true
        for (letter, count) in licensePlateLetterCount {
            if counts[letter] == nil {
                found = false
                break
            }
            if counts[letter]! < count {
                found = false
                break
            }
        }
        if found {
            shortestWord = word
            break
        }
    }

    return shortestWord
}

func getCounts(_ word: String) -> [Character: Int] {
    word.reduce(into: [:]) { counts, letter in
        if letter.isLetter {
            counts[Character(letter.lowercased()), default: 0] += 1
        }
    }
}

let licensePlate = "iMSlpe4"
let words = ["claim","consumer","student","camera","public","never","wonder","simple","thought","use"]

print(shortestCompletingWord(licensePlate, words))