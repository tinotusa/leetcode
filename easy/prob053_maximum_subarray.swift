// Given an integer array nums, find the contiguous subarray
// (containing at least one number) which has the largest sum and return its sum.

// A subarray is a contiguous part of an array.

func maxSubArray(_ nums: [Int]) -> Int {
    var max = nums[0]
    var currentSum = nums[0]

    for i in 1 ..< nums.count {
        if currentSum > 0 {
            currentSum += nums[i]
        } else {
            currentSum = nums[i]
        }
        if currentSum > max {
            max = currentSum
        }
    }

    return max
}

let nums = [-2,1,-3,4,-1,2,1,-5,4]

print(maxSubArray(nums))
