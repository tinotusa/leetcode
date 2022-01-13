// 557. Reverse Words in a String III

// Given a string s, reverse the order of characters in each word within a
// sentence while still preserving whitespace and initial word order.

func reverseWords(_ s: String) -> String {
    // var s = Array(s)
    // var count = 0
    // for (index, letter) in s.enumerated() {
    //     if letter == " " {
    //         let from = index - count
    //         let to = from + count - 1
    //         s = reverse(s, from: from, to: to)
    //         count = 0
    //     } else {
    //         count += 1
    //     }
    // }
    // s = reverse(s, from: s.count - count, to: s.count - 1)
    // return String(s)
    
    // solution 1
    var words = s.split(separator: " ").map { word in String(word) }
    for (index, word) in words.enumerated() { 
        words[index] = String(word.reversed())
    }
    return words.joined(separator: " ")
}

func reverse(_ s: [Character], from: Int, to: Int) -> [Character] {
    var s = s
    var start = from
    var end = to
    while start < end {
        s.swapAt(start, end)
        start += 1
        end -= 1
    }
    return s
}

print(reverseWords("This is a test run"))