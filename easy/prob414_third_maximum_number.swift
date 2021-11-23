// 414. Third Maximum Number

// Given an integer array nums, return the third distinct maximum number in this
// array. If the third maximum does not exist, return the maximum number.

func thirdMax(_ nums: [Int]) -> Int {
    let nums = Set(nums).sorted(by: >)
    if nums.count >= 3 {
        return nums[2]
    }
    return nums.first!
}

print(thirdMax([2, 1]))