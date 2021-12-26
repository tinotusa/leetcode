// 190. Reverse Bits
// Reverse bits of a given 32 bits unsigned integer.

import Foundation

func reverseBits(_ n: Int) -> Int {
    // solution 2
    var n = n
    var reversedValue = 0

    for i in 0 ..< 32 {
        reversedValue += (n & 1)
        if i < 31 {
            reversedValue <<= 1
        }
        n >>= 1
    }

    return reversedValue
    // solution 1
    // var n = n
    // var reversedValue = ""
    // while n > 0 {
    //     reversedValue = "\(reversedValue)\(n & 1)"
    //     n >>= 1
    // }
    // while reversedValue.count < 32 {
    //     reversedValue += "0"
    // }
    // return Int(reversedValue, radix: 2)!
}


// 0b 00000010 10010100 00011110 10011100


var value = 0b00000010100101000001111010011100
print(String(value, radix: 2))
value = reverseBits(value)
print(String(value, radix: 2))