// 482. License Key Formatting

// You are given a license key represented as a string s that consists of only
// alphanumeric characters and dashes. The string is separated into n + 1 groups
// by n dashes. You are also given an integer k.

// We want to reformat the string s such that each group contains exactly k
// characters, except for the first group, which could be shorter than k but still
// must contain at least one character. Furthermore, there must be a dash inserted
// between two groups, and you should convert all lowercase letters to uppercase.

// Return the reformatted license key.

func licenseKeyFormatting(_ s: String, _ k: Int) -> String {
    let s = Array(s)
    var results = [String]()
    var word = ""

    for i in stride(from: s.count - 1, through: 0, by: -1) {
        let letter = s[i]
        if letter == "-" {
            if word.count == k {
                results.append(word)
                word = ""
            }
        } else {
            word = String(letter) + word
        }
    }
    if !word.isEmpty {
        results.append(word)
    }
    results = results.reversed()
    return results.joined(separator: "-").uppercased()
}

print(licenseKeyFormatting("--a-a-a-a--", 2))