// 258. Add Digits

// Given an integer num, repeatedly add all its digits until the result has only one digit, and return it.

func addDigits(_ num: Int) -> Int {
    var num = num
    while num >= 10 {
        var temp = num
        var sum = 0
        while temp > 0 {
            sum += temp % 10
            temp /= 10
        }
        num = sum
    }
    return num
}

let num = 10
print(addDigits(num))