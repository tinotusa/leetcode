// 383. Ransom Note

// Given two stings ransomNote and magazine, return true if ransomNote can be
// constructed from magazine and false otherwise.

// Each letter in magazine can only be used once in ransomNote.

func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    // solution 2
    // var magazine = Array(magazine)
    // for letter in ransomNote {
    //     if magazine.contains(letter) {
    //         let index = magazine.firstIndex(of: letter)!
    //         magazine.remove(at: index)
    //     } else {
    //         return false
    //     }
    // }
    // return true

    // solution 1
    if ransomNote.count > magazine.count {
        return false
    }

    var ransomLetterFreq = [Character: Int]()
    var magazineLetterFreq = [Character: Int]()
    ransomNote.forEach { letter in
        ransomLetterFreq[letter, default: 0] += 1
    }
    magazine.forEach { letter in
        magazineLetterFreq[letter, default: 0] += 1
    }

    for (letter, count) in ransomLetterFreq {
        if let magCount = magazineLetterFreq[letter] {
            if count > magCount {
                return false
            }
        } else {
            return false
        }
    }

    return true
}

let ransomNote = "a"
let magazine = "b"
print(canConstruct(ransomNote, magazine))