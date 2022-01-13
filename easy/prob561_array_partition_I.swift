// 561. Array Partition I

// Given an integer array nums of 2n integers, group these integers into n pairs
// (a1, b1), (a2, b2), ..., (an, bn) such that the sum of min(ai, bi) for all i
// is maximized. Return the maximized sum.

func arrayPairSum(_ nums: [Int]) -> Int {
    var nums = nums.sorted()
    var sum = 0
    for i in stride(from: 0, to: nums.count, by: 2) {
        sum += nums[i]
    }
    return sum
}

print(arrayPairSum([6,2,6,5,1,2]))