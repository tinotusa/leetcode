// Given a non-negative integer x, compute and return the square root of x.

// Since the return type is an integer, the decimal digits are truncated,
// and only the integer part of the result is returned.

// Note: You are not allowed to use any built-in exponent function or operator,
// such as pow(x, 0.5) or x ** 0.5.

import Foundation

func sqrt(_ x: Int) -> Int {
    if x == 0 { return 0 }

    let x = Double(x)
    var low = 0.0
    var high = x
    var guess = (low + high) / 2
    var guessSquared = guess * guess
    let epsilon = 0.01
    
    while abs(guessSquared - x) >= epsilon {
        if guessSquared < x {
            low = guess
        } else {
            high = guess
        }
        guess = (low + high) / 2
        guessSquared = guess * guess
    }

    return Int(ceil(guess))
}

struct Test {
    var test: () -> Bool
    var result: Int
    var expected: Int
    var message = ""

    func run() {
        if !test() {
            print("FAILED: \(message) expected: \(expected) got: \(result)")
        } else {
            print("PASSED: \(message) expected: \(expected) got: \(result)")
        }
    }
}

let t = Test(
    test: { sqrt(4) == 2 },
    result: sqrt(4),
    expected: 2,
    message: "sqrt(4)"
)

let tests = [
    t,
    Test(test: { sqrt(8) == 2 }, result: sqrt(4), expected: 2, message: "sqrt(8)"),
    Test(test: { sqrt(9) == 3 }, result: sqrt(9), expected: 3, message: "sqrt(9)"),
    Test(test: { sqrt(5) == 2 }, result: sqrt(5), expected: 2, message: "sqrt(5)")
]

for test in tests {
    test.run()
}

print(sqrt(1))