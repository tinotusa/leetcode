// 504. Base 7

// Given an integer num, return a string of its base 7 representation.

func convertToBase7(_ num: Int) -> String {
    if num == 0 { return "0" }
    var num = num
    var isNegative = false
    var text = ""

    if num < 0 { 
        num = abs(num)
        isNegative = true
    }

    while num > 0 {
        let digit = num % 7
        text = "\(digit)\(text)"
        num /= 7
    }

    if isNegative { text = "-\(text)"}
    return text
}

print(convertToBase7(0))