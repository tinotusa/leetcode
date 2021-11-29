// 608. Valid Palindrome II

// aba remove b
func validPalindrome(_ s: String) -> Bool {
    let s = Array(s)
    var start = 0
    var end = s.count - 1
    
    while start < end {
        if s[start] != s[end] {
            // one of the two letters to skip
            var start1 = start
            var end1 = end - 1
            
            // one of the two letters to skip
            var start2 = start + 1
            var end2 = end
            
            // "remove" the one and test
            while start1 < end1 && s[start1] == s[end1] {
                start1 += 1
                end1 -= 1
            }

            // "remove" the other and test
            while start2 < end2 && s[start2] == s[end2] {
                start2 += 1
                end2 -= 1
            }

            // return whether or not one of them is valid (since i only have to remove one letter)
            return start1 >= end1 || start2 >= end2
        }

        start += 1
        end -= 1
    }
    return true
}
print(validPalindrome("pidbliassaqozokmtgahluruufwbjdtayuhbxwoicviygilgzduudzgligyviciowxbhuyatdjbwfuurulhagtmkozoqassailbdip"))