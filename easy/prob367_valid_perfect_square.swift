// 367. Valid Perfect Square

// Given a positive integer num, write a function which returns True if num is
// a perfect square else False.

// Follow up: Do not use any built-in library function such as sqrt.

func isPerfectSquare(_ num: Int) -> Bool {
    var low = 1
    var high = num
    while low <= high {
        let mid = (low + high) / 2
        let square = mid * mid
        if square == num {
            return true
        }
        if square > num {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return false
}

for i in 0 ..< 17 {
    print("\(i), isPerfect: \(isPerfectSquare(i))")
}