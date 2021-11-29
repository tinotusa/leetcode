// 67. Add Binary

// Given two binary strings a and b, return their sum as a binary string.

func addBinary(_ a: String, _ b: String) -> String {
    var aIndex = a.count - 1
    var bIndex = b.count - 1
    var carry = 0
    let a = Array(a)
    let b = Array(b)
    var result = ""

    while aIndex >= 0 || bIndex >= 0 {
        var sum = carry
        if aIndex >= 0 {
            sum += Int(a[aIndex].asciiValue! - Character("0").asciiValue!)
            aIndex -= 1
        }
        if bIndex >= 0 {
            sum += Int(b[bIndex].asciiValue! - Character("0").asciiValue!)
            bIndex -= 1
        }
        result = "\(sum % 2)\(result)"
        carry = sum / 2
    }
    if carry != 0 {
        result = "\(carry)\(result)"
    }
    return result
}

print(addBinary("11", "1"))