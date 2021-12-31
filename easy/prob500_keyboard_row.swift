// 500. Keyboard Row

// Given an array of strings words, return the words that can be typed using
// letters of the alphabet on only one row of American keyboard like the image below.

// In the American keyboard:

// the first row consists of the characters "qwertyuiop",
// the second row consists of the characters "asdfghjkl", and
// the third row consists of the characters "zxcvbnm".

func findWords(_ words: [String]) -> [String] {
	let rows = [
        "qwertyuiop",
        "asdfghjkl",
        "zxcvbnm"
    ]

    var results = [String]()

    for word in words {
        for row in rows {
            var found = true
            for letter in word {
                let letter = Character(letter.lowercased())
                if !row.contains(letter) {
                    found = false
                    break
                }
            }
            if found {
                results.append(word)
            }
        }
    }

    return results
}


print(findWords(["Hello","Alaska","Dad","Peace"]))