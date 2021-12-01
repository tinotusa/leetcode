// 374. Guess Number Higher or Lower

// We are playing the Guess Game. The game is as follows:

// I pick a number from 1 to n. You have to guess which number I picked.

// Every time you guess wrong, I will tell you whether the number I picked is higher or lower than your guess.

// You call a pre-defined API int guess(int num), which returns 3 possible results:

// -1: The number I picked is lower than your guess (i.e. pick < num).
// 1: The number I picked is higher than your guess (i.e. pick > num).
// 0: The number I picked is equal to your guess (i.e. pick == num).
// Return the number that I picked.

class Solution {
    func guessNumber(_ n: Int) -> Int {
        var low = 1
        var high = n

        while low <= high {
            let mid = low + (high - low) / 2
            let result = guess(mid)
            if result == 0 {
                return mid
            } else if result < 0 {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }

        return -1
    }
}