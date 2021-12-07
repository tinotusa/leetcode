// 441. Arranging Coins
// You have n coins and you want to build a staircase with these coins. The
// staircase consists of k rows where the ith row has exactly i coins. The
// last row of the staircase may be incomplete.

// Given the integer n, return the number of complete rows of the staircase
// you will build.

func arrangeCoins(_ n: Int) -> Int {
    if n <= 0 { return 0 }
    var n = n
    var completeStairs = 0
    var count = 1

    while n > 0 {
        if n - count > 0 {
            completeStairs += 1
        }
        n -= count
        count += 1
    }

    return completeStairs
}

print(arrangeCoins(8))