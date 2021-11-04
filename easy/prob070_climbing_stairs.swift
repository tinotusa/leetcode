// You are climbing a staircase. It takes n steps to reach the top.

// Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

 

// Example 1:

// Input: n = 2
// Output: 2
// Explanation: There are two ways to climb to the top.
// 1. 1 step + 1 step
// 2. 2 steps

// a b c
// 1 1 2 3
//   a b c
func climbStairs(_ n: Int) -> Int {
    // solution 2
    var a = 1
    var b = 1
    var c = a + b
    for _ in 2 ..< n {
        c = a + b
        a = b
        b = c
    }
    return c
    // solution 1
    // if n <= 2 {
    //     return n
    // }
    // return climbStairs(n - 1) + climbStairs(n - 2)
}

print(climbStairs(2))
print(climbStairs(3))
print(climbStairs(4))