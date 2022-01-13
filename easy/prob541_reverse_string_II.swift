// 541. Reverse String II

// Given a string s and an integer k, reverse the first k characters for every
// 2k characters counting from the start of the string.

// If there are fewer than k characters left, reverse all of them. If there are
// less than 2k but greater than or equal to k characters, then reverse the first
// k characters and leave the other as original.

func reverseStr(_ s: String, _ k: Int) -> String {
    var s = Array(s)
    var i = 0
    while i < s.count {
        let j = min(i + k - 1, s.count - 1)
        var start = i
        var end = j
        while start < end {
            s.swapAt(start, end)
            start += 1
            end -= 1
        }
        i += 2 * k
    }
    return String(s)
}

print(reverseStr("abcdefg", 8))