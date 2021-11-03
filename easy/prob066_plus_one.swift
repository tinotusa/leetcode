import Foundation
// You are given a large integer represented as an integer array digits,
// where each digits[i] is the ith digit of the integer. The digits are ordered
// from most significant to least significant in left-to-right order.
// The large integer does not contain any leading 0's.

// Increment the large integer by one and return the resulting array of digits.

func plusOne(_ digits: [Int]) -> [Int] {
    var digits = digits

    for i in stride(from: digits.count - 1, through: 0, by:  -1) {
        if digits[i] < 9 {
            digits[i] += 1
            return digits
        }

        digits[i] = 0
    }

    digits.append(1)
    digits.swapAt(0, digits.count - 1)
    return digits
}

var digits = [9, 8, 9]
print(plusOne(digits))