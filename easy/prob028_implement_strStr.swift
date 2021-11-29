// Implement strStr().

// Return the index of the first occurrence of needle in haystack, or -1 if
// needle is not part of haystack.
// return 0 when needle is an empty string. 

func strStr(_ haystack: String, _ needle: String) -> Int {
    if needle.isEmpty { return 0 }
    let haystack = Array(haystack)
    let needle = Array(needle)

    for i in 0 ..< haystack.count {
        if i + needle.count > haystack.count {
            break
        }

        var found = true
        for j in 0 ..< needle.count {
            if needle[j] != haystack[i + j] {
                found = false
                break
            }
        }
        if found {
            return i
        }
    }

    return -1
}

print(strStr("", ""))