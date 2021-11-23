// 415. Add Strings

// Given two non-negative integers, num1 and num2 represented as string, return
// the sum of num1 and num2 as a string.

// You must solve the problem without using any built-in library for handling
// large integers (such as BigInteger). You must also not convert the inputs
// to integers directly.

// "1 2 3"
// "  1 1"

//  "9 9"
//  "  1"
// 1 0 0
func addStrings(_ num1: String, _ num2: String) -> String {
    let num1 = Array(num1)
    let num2 = Array(num2)
    var result = ""
    var num1Index = num1.count - 1
    var num2Index = num2.count - 1
    var carry = 0
    while num1Index >= 0 || num2Index >= 0 || carry > 0 {
        var sum = 0
        if num1Index >= 0 {
            sum += Int(String(num1[num1Index]))!
            num1Index -= 1
        }
        if num2Index >= 0 {
            sum += Int(String(num2[num2Index]))!
            num2Index -= 1
        }
        sum += carry
        carry = sum / 10
        sum %= 10
        result = "\(sum)\(result)"
    }
    return result
}

print(addStrings("99", "1"))