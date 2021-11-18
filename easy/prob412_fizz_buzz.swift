// 412. Fizz Buzz

// Given an integer n, return a string array answer (1-indexed) where:

// answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
// answer[i] == "Fizz" if i is divisible by 3.
// answer[i] == "Buzz" if i is divisible by 5.
// answer[i] == i if non of the above conditions are true

func fizzBuzz(_ n: Int) -> [String] {
    var result = [String]()
    for i in 1 ... n {
        if i % 15 == 0 {
            result.append("FizzBuzz")
        } else if i % 5 == 0 {
            result.append("Buzz")
        } else if i % 3 == 0 {
            result.append("Fizz")
        } else {
            result.append("\(i)")
        }
    }
    return result
}

print(fizzBuzz(5))