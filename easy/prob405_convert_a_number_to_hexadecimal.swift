import Foundation
// 405. Convert a Number to Hexadecimal

// Given an integer num, return a string representing its hexadecimal representation.
// For negative integers, two’s complement method is used.

// All the letters in the answer string should be lowercase characters, and there
// should not be any leading zeros in the answer except for the zero itself.

// Note: You are not allowed to use any built-in library method to directly solve this problem.

func toHex(_ num: Int) -> String {
    let hexValues = Array("0123456789abcdef")
    var num = num
    if num < 0 {
        num += Int(pow(Double(2),Double(32)))
    }
    return convert(num, base: 16, values: hexValues)
}

func toBinary(_ num: Int) -> String {
    let binaryValues = Array("01")
    return convert(num, base: 2, values: binaryValues)
}

func convert(_ num: Int, base: Int, values: [Character]) -> String {
    var textRepresentation = ""
    var num = num
    if num == 0 {
        return String(values[0])
    }
    while num > 0 {
        let index = num % base
        // print(index)
        textRepresentation = String(values[index]) + textRepresentation
        num /= base
    }
    
    return textRepresentation
}


print(toHex(-1))

